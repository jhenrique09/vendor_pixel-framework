.class final Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthService$binder$1$getIncompatibleChargerData$1"
    f = "HealthService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callerPackage:[Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->$callerPackage:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->$callerPackage:[Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;-><init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->$callerPackage:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getIncompatibleChargingState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HealthService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;

    iget-object v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object v1, v1, Lcom/google/android/systemui/power/batteryhealth/HealthService;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->containsIncompatibleChargers(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object v0, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_compatible_charger_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_incompatible_charger_time"

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    move-object v1, p1

    move-wide v2, v4

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;-><init>(JJZ)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
