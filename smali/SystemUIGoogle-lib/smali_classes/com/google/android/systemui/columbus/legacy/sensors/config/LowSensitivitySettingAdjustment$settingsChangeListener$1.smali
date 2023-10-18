.class public final Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlertSilenceEnabledChange(Z)V
    .locals 0

    return-void
.end method

.method public final onColumbusEnabledChange(Z)V
    .locals 0

    return-void
.end method

.method public final onLowSensitivityChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onSelectedActionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSelectedAppChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSelectedAppShortcutChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onUseApSensorChange()V
    .locals 0

    return-void
.end method
