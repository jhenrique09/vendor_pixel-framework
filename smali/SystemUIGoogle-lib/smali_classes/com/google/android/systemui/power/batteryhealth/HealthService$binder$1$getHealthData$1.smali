.class final Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthService$binder$1$getHealthData$1"
    f = "HealthService.kt"
    l = {
        0x38,
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callerPackage:[Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->$callerPackage:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->$callerPackage:[Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;-><init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->$callerPackage:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getHealthData: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HealthService"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->$callerPackage:[Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v1, "com.google.android.apps.diagnosticstool"

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v3, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iput v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;

    invoke-direct {v2, p1, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getOnBackground$2;

    invoke-direct {v3, v2, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getOnBackground$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iput v2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthData$2;

    invoke-direct {v2, p1, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthData$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getOnBackground$2;

    invoke-direct {v3, v2, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getOnBackground$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    :goto_3
    return-object p1
.end method
