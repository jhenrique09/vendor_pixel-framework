.class public final Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final actionListener:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public exceptionActive:Z

.field public final exceptions:Ljava/util/Set;

.field public final provisionedController:Ldagger/Lazy;

.field public final provisionedListener:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1;

.field public setupComplete:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->exceptions:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->provisionedListener:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->actionListener:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1;

    return-void
.end method

.method public static final access$isSetupComplete(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;

    iget v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

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
    iget-object p0, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$isDeviceProvisioned$1;

    invoke-direct {p1, p0, v5}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$isDeviceProvisioned$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object v6, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v2, v6, p1}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    new-instance v7, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$isCurrentUserSetup$1;

    invoke-direct {v7, p0, v5}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$isCurrentUserSetup$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v6, v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->label:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v5, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method public static final access$updateBlocking(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$updateBlocking$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$updateBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->provisionedListener:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$onActivate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->exceptions:Ljava/util/Set;

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

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->actionListener:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->provisionedListener:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$toString$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$toString$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

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
