.class final Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthManager$getCustomizedHealthData$2"
    f = "HealthManager.kt"
    l = {
        0xbb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "HealthManager"

    const-string v1, "getCustomizedHealthData: "

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->initializer:Lkotlinx/coroutines/StandaloneCoroutine;

    iput v4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getCustomizedHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->googleBattery:Lvendor/google/google_battery/IGoogleBattery;

    if-eqz p0, :cond_3

    check-cast p0, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-virtual {p0}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;->getHealthStats()Lvendor/google/google_battery/BatteryHealthStats;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    new-instance v2, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    if-eqz p0, :cond_4

    iget v3, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthIndex:I

    goto :goto_2

    :cond_4
    move v3, p1

    :goto_2
    if-eqz p0, :cond_5

    iget v4, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthImpedanceIndex:I

    goto :goto_3

    :cond_5
    move v4, p1

    :goto_3
    if-eqz p0, :cond_6

    iget v5, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthCapacityIndex:I

    goto :goto_4

    :cond_6
    move v5, p1

    :goto_4
    if-eqz p0, :cond_7

    iget p0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthStatus:I

    goto :goto_5

    :cond_7
    move p0, p1

    :goto_5
    invoke-direct {v2, v3, v4, v5, p0}, Lcom/google/android/systemui/power/batteryhealth/HealthData;-><init>(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    invoke-direct {v2, p1, p1, p1, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthData;-><init>(IIII)V

    :goto_6
    return-object v2
.end method
