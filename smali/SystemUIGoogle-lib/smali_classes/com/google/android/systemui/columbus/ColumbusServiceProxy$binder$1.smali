.class public final Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/IColumbusService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.systemui.columbus.IColumbusService"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->onTransact$com$google$android$systemui$columbus$IColumbusService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public final onTransact$com$google$android$systemui$columbus$IColumbusService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const-string v0, "com.google.android.systemui.columbus.IColumbusService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    sget p4, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->$r8$clinit:I

    const-string p4, "com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE"

    const-string v0, "Must have com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE permission"

    invoke-virtual {p2, p4, v0}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, -0x1

    add-int/2addr p2, p4

    :goto_0
    if-ge p4, p2, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;->listener:Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-interface {v0, p1, p3}, Lcom/google/android/systemui/columbus/IColumbusServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Columbus/ColumbusProxy"

    const-string v3, "Cannot set listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

.method public final registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    sget v1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->$r8$clinit:I

    const-string v1, "com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE"

    const-string v2, "Must have com.google.android.columbus.permission.CONFIGURE_COLUMBUS_GESTURE permission"

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "Columbus/ColumbusProxy"

    const-string p1, "Binder token must not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceProxy;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy;->columbusServiceListeners:Ljava/util/List;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;

    const-string v1, "com.google.android.systemui.columbus.IColumbusServiceListener"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;

    invoke-direct {v1, p2}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;-><init>(Landroid/os/IBinder;Lcom/google/android/systemui/columbus/IColumbusServiceListener;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
