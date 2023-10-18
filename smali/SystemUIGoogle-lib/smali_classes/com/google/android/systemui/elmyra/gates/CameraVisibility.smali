.class public final Lcom/google/android/systemui/elmyra/gates/CameraVisibility;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mCameraAction:Lcom/google/android/systemui/elmyra/actions/CameraAction;

.field public final mCameraPackageName:Ljava/lang/String;

.field public mCameraShowing:Z

.field public final mExceptions:Ljava/util/Set;

.field public final mGateListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;

.field public final mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

.field public final mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

.field public final mUpdateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/elmyra/actions/CameraAction;Lcom/google/android/systemui/elmyra/gates/PowerState;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mGateListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraAction:Lcom/google/android/systemui/elmyra/actions/CameraAction;

    iput-object p7, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mExceptions:Ljava/util/Set;

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "activity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    iput-object p6, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    iput-object v0, p6, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    iput-object v0, p4, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f13039d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mUpdateExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mExceptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraAction:Lcom/google/android/systemui/elmyra/actions/CameraAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final isCameraShowing()Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraPackageName:Ljava/lang/String;

    const-string v1, "Elmyra/CameraVisibility"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "unable to check task stack"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    :try_start_1
    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    invoke-virtual {v6, v0, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    move v6, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v8, v5, :cond_3

    iget-object v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_5

    :catch_1
    :cond_2
    :goto_4
    move v0, v2

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v4, "Could not check camera foreground status"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_5
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocking()Z

    move-result p0

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Elmyra/CameraVisibility"

    const-string v1, "Could not register task stack listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onDeactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Elmyra/CameraVisibility"

    const-string v1, "Could not unregister task stack listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
