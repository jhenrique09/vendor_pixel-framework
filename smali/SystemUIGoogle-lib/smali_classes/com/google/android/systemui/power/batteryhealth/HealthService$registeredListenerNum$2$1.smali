.class final Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthService$registeredListenerNum$2$1"
    f = "HealthService.kt"
    l = {
        0x5f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iput v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$registeredListenerNum$2$1;->label:I

    sget-object v1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "HealthService"

    const-string v3, "Subscribe listeners"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    instance-of v3, v1, Lkotlinx/coroutines/flow/CancellableFlow;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lkotlinx/coroutines/flow/CancellableFlowImpl;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/CancellableFlowImpl;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    move-object v1, v3

    :goto_0
    new-instance v3, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;

    invoke-direct {v3, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;)V

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v2
.end method
