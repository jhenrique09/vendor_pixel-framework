.class final Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$listener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$1;->$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object v0, v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "health_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$1;->$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
