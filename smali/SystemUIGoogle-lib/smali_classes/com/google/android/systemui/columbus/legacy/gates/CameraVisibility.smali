.class public final Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final actionListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1;

.field public final activityManager:Ldagger/Lazy;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public cameraShowing:Z

.field public exceptionActive:Z

.field public final exceptions:Ljava/util/List;

.field public final gateListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$gateListener$1;

.field public final keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

.field public final taskStackListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/legacy/gates/PowerState;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->exceptions:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->activityManager:Ldagger/Lazy;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->taskStackListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$gateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->actionListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1;

    return-void
.end method

.method public static final access$isCameraShowing(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;

    iget v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result p1

    if-nez p1, :cond_6

    iput-object p0, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->label:I

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->isCameraTopActivity(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->label:I

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->isCameraInForeground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v1, p1

    goto :goto_3

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final isCameraInForeground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;

    iget v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1

    :goto_2
    const-string p1, "Columbus/CameraVis"

    const-string v0, "Could not check camera foreground status"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isCameraTopActivity(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;

    iget v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$2;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraTopActivity$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1

    :goto_2
    const-string p1, "Columbus/CameraVis"

    const-string v0, "unable to check task stack"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final onActivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->activityManager:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->taskStackListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Columbus/CameraVis"

    const-string v2, "Could not register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$onActivate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/legacy/actions/Action;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/actions/Action;->listeners:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->actionListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->activityManager:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->taskStackListener:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Columbus/CameraVis"

    const-string v1, "Could not unregister task stack listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$toString$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$toString$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
