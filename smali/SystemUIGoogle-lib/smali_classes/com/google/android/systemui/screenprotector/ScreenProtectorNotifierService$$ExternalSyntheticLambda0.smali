.class public final synthetic Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    iput-object p2, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    check-cast v2, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;

    iget-object v2, v2, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    if-ne v2, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mSharedPreferenceChangeListener:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;

    const-string v2, "screen_protector_shared_perf"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p0, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const-string v0, "screen_protector_shared_perf"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "notification_response"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
