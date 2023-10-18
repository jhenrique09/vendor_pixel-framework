.class final Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthManager$getHealthDataFlow$1"
    f = "HealthManager.kt"
    l = {
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$listener$1;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$listener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object v3, v3, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "health_prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    new-instance v3, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$1;

    iget-object v4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-direct {v3, v4, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$listener$1;)V

    iput v2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
