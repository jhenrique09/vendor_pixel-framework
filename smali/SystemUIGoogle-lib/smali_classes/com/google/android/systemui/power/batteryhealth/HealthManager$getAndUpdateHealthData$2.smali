.class final Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthManager$getAndUpdateHealthData$2"
    f = "HealthManager.kt"
    l = {
        0xaa,
        0xab,
        0xac,
        0xad,
        0xa8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/content/SharedPreferences;

    iget-object v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v2

    move-object v13, v4

    move-object v12, v5

    move-object v10, v6

    move-object v11, v7

    move-object/from16 v4, p1

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/content/SharedPreferences;

    iget-object v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v6, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/content/SharedPreferences;

    iget-object v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v7

    move-object v7, v6

    move-object/from16 v6, p1

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v7

    move-object/from16 v7, p1

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object v9, v2, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "health_prefs"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iput-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    iput v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->label:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthIndex$2;

    invoke-direct {v7, v10, v8}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthIndex$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6

    return-object v1

    :cond_6
    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, v17

    :goto_0
    check-cast v7, Ljava/lang/Integer;

    iget-object v10, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iput-object v9, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->label:I

    sget-boolean v6, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;

    invoke-direct {v6, v10, v8}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    :cond_7
    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    :goto_1
    check-cast v6, Ljava/lang/Integer;

    iget-object v10, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iput-object v9, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$3:Ljava/lang/Object;

    iput v5, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->label:I

    sget-boolean v5, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthCapacityIndex$2;

    invoke-direct {v5, v10, v8}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthCapacityIndex$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    :cond_8
    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v2, v17

    :goto_2
    check-cast v5, Ljava/lang/Integer;

    iget-object v10, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iput-object v9, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->label:I

    sget-boolean v4, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthStatus$2;

    invoke-direct {v4, v10, v8}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthStatus$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_9

    return-object v1

    :cond_9
    move-object v13, v2

    move-object v14, v5

    move-object v12, v6

    move-object v10, v7

    move-object v11, v9

    :goto_3
    move-object v15, v4

    check-cast v15, Ljava/lang/Integer;

    iput-object v8, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getAndUpdateHealthData$2;->label:I

    sget-boolean v2, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/systemui/power/batteryhealth/HealthManager;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    return-object v0
.end method
