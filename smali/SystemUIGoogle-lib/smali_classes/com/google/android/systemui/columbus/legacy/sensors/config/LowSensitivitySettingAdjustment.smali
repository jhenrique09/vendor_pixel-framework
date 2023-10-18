.class public final Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public callback:Lkotlin/jvm/functions/Function1;

.field public final sensorConfiguration:Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;

.field public useLowSensitivity:Z


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;)V

    iget-object p2, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string v0, "columbus_low_sensitivity"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
