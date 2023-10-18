.class public final Lcom/google/android/systemui/elmyra/gates/PowerSaveState;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public mBatterySaverEnabled:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mIsDeviceInteractive:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mLock:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/PowerSaveState;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mPowerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBatterySaverEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mIsDeviceInteractive:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onActivate()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBatterySaverEnabled:Z

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mIsDeviceInteractive:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
