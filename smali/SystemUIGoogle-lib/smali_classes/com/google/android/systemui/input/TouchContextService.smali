.class public final Lcom/google/android/systemui/input/TouchContextService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INTERFACE_NAME:Ljava/lang/String;


# instance fields
.field public final mActivePropertyNamespaces:Ljava/util/ArrayList;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioModeListener:Lcom/google/android/systemui/input/TouchContextService$4;

.field public final mDisplayListener:Lcom/google/android/systemui/input/TouchContextService$3;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mPreviousAudioMode:I

.field public mPreviousRotation:I

.field public final mPropertiesChangedListeners:Ljava/util/ArrayList;

.field public final mPropertiesLock:Ljava/lang/Object;

.field public final mPropertyNamespaceListener:Lcom/google/android/systemui/input/TouchContextService$2;

.field public final mServiceCallback:Lcom/google/android/systemui/input/TouchContextService$1;

.field public final mServiceLock:Ljava/lang/Object;

.field public mTouchContextService:Lcom/google/input/ITouchContextService;


# direct methods
.method public static -$$Nest$mconfigPropertiesChanged(Lcom/google/android/systemui/input/TouchContextService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/google/input/PropertyPacket;

    invoke-direct {v3}, Lcom/google/input/PropertyPacket;-><init>()V

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/input/PropertyPacket;->namespaceName:Ljava/lang/String;

    iput-object v2, v3, Lcom/google/input/PropertyPacket;->propertyName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/input/PropertyPacket;->propertyValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "TouchContextService.java"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Property changed: namespace = \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/input/PropertyPacket;->namespaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", name = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/google/input/PropertyPacket;->propertyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", value = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/google/input/PropertyPacket;->propertyValue:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mTouchContextService:Lcom/google/input/ITouchContextService;

    if-nez v1, :cond_1

    const-string v1, "TouchContextService.java"

    const-string v2, "mTouchContextService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService;->mTouchContextService:Lcom/google/input/ITouchContextService;

    if-nez p0, :cond_2

    const-string p0, "TouchContextService.java"

    const-string v0, "configPropertiesChanged: Failed to get TouchContextService."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_1
    check-cast p0, Lcom/google/input/ITouchContextService$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/google/input/ITouchContextService$Stub$Proxy;->configPropertiesChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "TouchContextService.java"

    const-string v1, "configPropertiesChanged: Failed to update config properties."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p1

    :goto_1
    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2
.end method

.method public static -$$Nest$mupdateTouchContext(Lcom/google/android/systemui/input/TouchContextService;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/input/ContextPacket;

    invoke-direct {v0}, Lcom/google/input/ContextPacket;-><init>()V

    iget v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousRotation:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/google/input/ContextPacket;->orientation:B

    iget v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousAudioMode:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/google/input/ContextPacket;->audioMode:B

    iget-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/input/TouchContextService;->mTouchContextService:Lcom/google/input/ITouchContextService;

    if-nez v2, :cond_0

    const-string v2, "TouchContextService.java"

    const-string v3, "mTouchContextService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService;->mTouchContextService:Lcom/google/input/ITouchContextService;

    if-nez p0, :cond_1

    const-string p0, "TouchContextService.java"

    const-string v0, "Failed to get touch context service, dropping context packet."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    check-cast p0, Lcom/google/input/ITouchContextService$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/google/input/ITouchContextService$Stub$Proxy;->updateContext(Lcom/google/input/ContextPacket;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TouchContextService.java"

    const-string v2, "Failed to send input context packet."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    :goto_0
    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/input/ITouchContextService;->DESCRIPTOR:Ljava/lang/String;

    const-string v2, "/default"

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/input/TouchContextService;->INTERFACE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/input/TouchContextService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/input/TouchContextService$1;-><init>(Lcom/google/android/systemui/input/TouchContextService;)V

    iput-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mServiceCallback:Lcom/google/android/systemui/input/TouchContextService$1;

    new-instance v1, Lcom/google/android/systemui/input/TouchContextService$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/input/TouchContextService$2;-><init>(Lcom/google/android/systemui/input/TouchContextService;)V

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPropertyNamespaceListener:Lcom/google/android/systemui/input/TouchContextService$2;

    new-instance v1, Lcom/google/android/systemui/input/TouchContextService$3;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/input/TouchContextService$3;-><init>(Lcom/google/android/systemui/input/TouchContextService;)V

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mDisplayListener:Lcom/google/android/systemui/input/TouchContextService$3;

    new-instance v1, Lcom/google/android/systemui/input/TouchContextService$4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/input/TouchContextService$4;-><init>(Lcom/google/android/systemui/input/TouchContextService;)V

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mAudioModeListener:Lcom/google/android/systemui/input/TouchContextService$4;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mActivePropertyNamespaces:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mServiceLock:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousRotation:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousAudioMode:I

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/google/android/systemui/input/TouchContextService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousAudioMode:I

    sget-object p0, Lcom/google/android/systemui/input/TouchContextService;->INTERFACE_NAME:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "TouchContextService.java"

    if-nez p1, :cond_0

    const-string p0, "No ITouchContextService declared in manifest, not sending input context."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to register for notifications."

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
