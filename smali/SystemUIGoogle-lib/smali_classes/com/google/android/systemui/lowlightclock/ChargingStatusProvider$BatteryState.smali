.class public final Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;


# direct methods
.method public static -$$Nest$mgetBatteryLevelAsPercentage(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isChargingOrFull()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v0, 0x64

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    :goto_1
    if-eqz p0, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public final isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
