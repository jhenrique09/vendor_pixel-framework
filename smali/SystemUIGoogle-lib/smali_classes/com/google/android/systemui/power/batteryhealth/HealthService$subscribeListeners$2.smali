.class public final Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "HealthService"

    if-eqz v1, :cond_4

    const-string v1, "Notify data update for key: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "perf_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$2;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$2;-><init>(Lkotlin/Pair;)V

    invoke-static {p0, v0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    goto :goto_2

    :sswitch_1
    const-string v1, "health_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$4;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$4;-><init>(Lkotlin/Pair;)V

    invoke-static {p0, v0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    goto :goto_2

    :sswitch_2
    const-string v1, "health_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$1;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$1;-><init>(Lkotlin/Pair;)V

    invoke-static {p0, v0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    goto :goto_2

    :sswitch_3
    const-string v1, "capacity_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$3;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$3;-><init>(Lkotlin/Pair;)V

    invoke-static {p0, v0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    goto :goto_2

    :cond_3
    :goto_0
    const-string p0, "Unknown prefs key"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Key: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not from prefs"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bcb52f3 -> :sswitch_3
        0x32c0592f -> :sswitch_2
        0x36aeab35 -> :sswitch_1
        0x5d3a6bfc -> :sswitch_0
    .end sparse-switch
.end method
