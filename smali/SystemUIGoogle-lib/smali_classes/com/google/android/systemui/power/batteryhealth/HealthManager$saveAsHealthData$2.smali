.class final Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthManager$saveAsHealthData$2"
    f = "HealthManager.kt"
    l = {
        0x109
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $capacity:Ljava/lang/Integer;

.field final synthetic $health:Ljava/lang/Integer;

.field final synthetic $healthPrefs:Landroid/content/SharedPreferences;

.field final synthetic $performance:Ljava/lang/Integer;

.field final synthetic $status:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/systemui/power/batteryhealth/HealthManager;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$health:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$performance:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$capacity:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$status:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$healthPrefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;

    iget-object v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$health:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$performance:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$capacity:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$status:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$healthPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/systemui/power/batteryhealth/HealthManager;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$health:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$performance:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$capacity:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$status:Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got BHI, hi:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pi:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ci:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", hs:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HealthManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$healthPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$health:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$performance:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$capacity:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->$status:Ljava/lang/Integer;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v8, "health_index"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "perf_index"

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "capacity_index"

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "health_status"

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput v2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$saveAsHealthData$2;->label:I

    sget-boolean v2, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFromPrefs$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFromPrefs$2;-><init>(Landroid/content/SharedPreferences;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    return-object p1
.end method
