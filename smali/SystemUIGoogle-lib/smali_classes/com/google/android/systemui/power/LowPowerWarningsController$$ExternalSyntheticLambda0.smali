.class public final synthetic Lcom/google/android/systemui/power/LowPowerWarningsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/LowPowerWarningsController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/LowPowerWarningsController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/LowPowerWarningsController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/LowPowerWarningsController;

    iput-object p2, p0, Lcom/google/android/systemui/power/LowPowerWarningsController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/LowPowerWarningsController;

    iget-object p0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-nez v2, :cond_2

    const-string v0, "com.android.settingslib.fuelgauge.ACTION_SAVER_STATE_MANUAL_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "extra_power_save_mode_manual_enabled_reason"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "extra_power_save_mode_manual_enabled"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_ENABLED_REASON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_DISABLED_REASON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v3, p0, v1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    iget-boolean v1, v0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mLastPowerSaveEnabledAsync:Z

    if-ne v1, p0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    sget-object v1, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_ENABLED:Lcom/google/android/systemui/power/BatteryMetricEvent;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_DISABLED:Lcom/google/android/systemui/power/BatteryMetricEvent;

    :goto_1
    invoke-interface {v3, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iput-boolean p0, v0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mLastPowerSaveEnabledAsync:Z

    :goto_2
    return-void
.end method
