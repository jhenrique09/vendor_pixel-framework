.class public abstract Lcom/google/input/IConfigPropertyNamespaceListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/google/input/IConfigPropertyNamespaceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object v0, Lcom/google/input/IConfigPropertyNamespaceListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    const p0, 0xfffffe

    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "getInterfaceVersion"

    goto :goto_0

    :pswitch_1
    const-string p0, "getInterfaceHash"

    goto :goto_0

    :cond_0
    const-string p0, "onResult"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    sget-object v0, Lcom/google/input/IConfigPropertyNamespaceListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    if-eq p1, v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p0, 0x2

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const-string p0, "notfrozen"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/input/TouchContextService$2;

    const-string p2, "TouchContextService.java"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "IConfigPropertyNamespaceListener received namespaces: \""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, "\", \""

    invoke-static {p4, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object p2, p2, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object p3, p3, Lcom/google/android/systemui/input/TouchContextService;->mActivePropertyNamespaces:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object v0, v0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object v0, v0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object p4, p4, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    move p4, p3

    :goto_1
    array-length v0, p1

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object v0, v0, Lcom/google/android/systemui/input/TouchContextService;->mActivePropertyNamespaces:Ljava/util/ArrayList;

    aget-object v2, p1, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object v2, v0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/systemui/input/TouchContextService$PropertiesChangedListener;

    invoke-direct {v3, v0}, Lcom/google/android/systemui/input/TouchContextService$PropertiesChangedListener;-><init>(Lcom/google/android/systemui/input/TouchContextService;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v0, p1, p4

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object v3, v3, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService$2;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    aget-object v2, p1, p4

    new-array v3, p3, [Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/systemui/input/TouchContextService;->-$$Nest$mconfigPropertiesChanged(Lcom/google/android/systemui/input/TouchContextService;Landroid/provider/DeviceConfig$Properties;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p2

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
