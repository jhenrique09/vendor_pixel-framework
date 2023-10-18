.class public final synthetic Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;

.field public final synthetic f$1:B

.field public final synthetic f$2:B

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;BBI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;

    iput-byte p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$1:B

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$2:B

    iput p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$1:B

    iget-byte v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$2:B

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;->f$3:I

    iget-object v3, v0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;->mContext:Landroid/content/Context;

    const-string v4, "Unable to bind Dreamliner service: "

    monitor-enter v3

    :try_start_0
    iget-object v5, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v3

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    iget-object v6, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-virtual {v6, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->registerReceiver(Landroid/content/Context;)V

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.apps.dreamliner.START"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.google.android.apps.dreamliner/.DreamlinerControlService"

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "type"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "orientation"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v6, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "occluded"

    iget-object v1, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    invoke-virtual {v6, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    invoke-direct {p0, v3, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    iput-object p0, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v6, p0, v5, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string v1, "DLObserver"

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v3, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    iput-object p0, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    const-string p0, "DLObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v3

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method
