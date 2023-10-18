.class final Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthManager$initHalInterface$2"
    f = "HealthManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p1, "HealthManager"

    const-string v0, "initHalInterface"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$initHalInterface$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    sget-boolean p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;->INSTANCE:Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;

    invoke-static {p1}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->initHalInterface(Landroid/os/IBinder$DeathRecipient;)Lvendor/google/google_battery/IGoogleBattery;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->googleBattery:Lvendor/google/google_battery/IGoogleBattery;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
