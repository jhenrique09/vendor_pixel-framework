.class final Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthManager$getHealthImpedanceIndex$2"
    f = "HealthManager.kt"
    l = {
        0xdc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "HealthManager"

    const-string v1, "getImpedanceIdx: "

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->label:I

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

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->initializer:Lkotlinx/coroutines/StandaloneCoroutine;

    iput v4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthImpedanceIndex$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->googleBattery:Lvendor/google/google_battery/IGoogleBattery;

    if-eqz p0, :cond_3

    check-cast p0, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-virtual {p0}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;->getHealthImpedanceIndex()I

    move-result p0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object v2, p1

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p1
.end method
