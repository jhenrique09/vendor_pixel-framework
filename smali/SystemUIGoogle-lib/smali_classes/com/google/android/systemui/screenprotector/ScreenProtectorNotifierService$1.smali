.class public final Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$1;
.super Landroid/os/IServiceCallback$Stub;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$1;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p0, "ScreenProtectorNotifierService"

    const-string p1, "ServiceCallback.onRegistration() binder is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "ScreenProtectorNotifierService"

    const-string p2, "onServiceRegistration name mismatch \u2013 received name: \""

    const-string v1, "\", expected name: \""

    const-string v2, "\""

    invoke-static {p2, p1, v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$1;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance p1, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez p1, :cond_2

    const-string p0, "ScreenProtectorNotifierService"

    const-string p1, "Failed to initialize mNotificationManager."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;-><init>(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;)V

    iput-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mSharedPreferenceChangeListener:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;

    iget-object p2, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const-string v1, "screen_protector_shared_perf"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->getScreenProtectorDetectorService()V

    invoke-virtual {p0}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->registerScreenProtectorDetectorLister()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->updateNotificationPreference()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    const-string p1, "ScreenProtectorNotifierService"

    const-string p2, "Failed to link to death on IScreenProtectorDetectorService."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p0, "ScreenProtectorNotifierService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "IServiceCallback registered - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
