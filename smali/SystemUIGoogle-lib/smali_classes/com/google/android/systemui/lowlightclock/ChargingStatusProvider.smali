.class public final Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field public final mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

.field public mCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/internal/app/IBatteryStats;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-direct {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iput-object p4, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final reportStatusToCallback()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x4

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v1, v1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v2

    :goto_5
    iget-object v5, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v6

    if-nez v6, :cond_6

    const/4 p0, 0x0

    goto/16 :goto_18

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v6, v6, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    if-ne v6, v4, :cond_7

    move v6, v2

    goto :goto_6

    :cond_7
    move v6, v3

    :goto_6
    if-eqz v6, :cond_8

    move v6, v2

    goto :goto_7

    :cond_8
    move v6, v3

    :goto_7
    iget-object v7, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mResources:Landroid/content/res/Resources;

    if-eqz v6, :cond_9

    invoke-static {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->-$$Nest$mgetBatteryLevelAsPercentage(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f130477

    invoke-virtual {v7, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_18

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v8, v6, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_b

    const/16 v8, 0x64

    iget v6, v6, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    if-lt v6, v8, :cond_a

    goto :goto_8

    :cond_a
    move v6, v3

    goto :goto_9

    :cond_b
    :goto_8
    move v6, v2

    :goto_9
    if-eqz v6, :cond_c

    move v6, v2

    goto :goto_a

    :cond_c
    move v6, v3

    :goto_a
    if-eqz v6, :cond_d

    const p0, 0x7f130455

    invoke-virtual {v7, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_18

    :cond_d
    iget-object v6, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v8}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v2

    goto :goto_b

    :cond_e
    move v8, v3

    :goto_b
    if-eqz v8, :cond_f

    invoke-interface {v6}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v6

    const-string v8, "ChargingStatusProvider"

    const-string v9, "Error calling IBatteryStats: "

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    const-wide/16 v8, -0x1

    :goto_c
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_10

    move v6, v2

    goto :goto_d

    :cond_10
    move v6, v3

    :goto_d
    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_13

    iget-object v10, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v10, v10, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq v10, v2, :cond_12

    if-ne v10, v11, :cond_11

    goto :goto_e

    :cond_11
    move v10, v3

    goto :goto_f

    :cond_12
    :goto_e
    move v10, v2

    :goto_f
    if-eqz v10, :cond_13

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v10

    if-eqz v10, :cond_13

    move v10, v2

    goto :goto_10

    :cond_13
    move v10, v3

    :goto_10
    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_19

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getChargingSpeed(Landroid/content/Context;)I

    move-result v2

    goto :goto_11

    :cond_14
    move v2, v3

    :goto_11
    if-eqz v2, :cond_17

    if-eq v2, v11, :cond_15

    if-eqz v6, :cond_22

    goto/16 :goto_16

    :cond_15
    if-eqz v6, :cond_16

    const v2, 0x7f130469

    goto/16 :goto_17

    :cond_16
    const v2, 0x7f130476

    goto/16 :goto_17

    :cond_17
    if-eqz v6, :cond_18

    const v2, 0x7f13046a

    goto/16 :goto_17

    :cond_18
    const v2, 0x7f130478

    goto/16 :goto_17

    :cond_19
    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v10, v10, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-ne v10, v4, :cond_1a

    move v10, v2

    goto :goto_12

    :cond_1a
    move v10, v3

    :goto_12
    if-eqz v10, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v10

    if-eqz v10, :cond_1b

    move v10, v2

    goto :goto_13

    :cond_1b
    move v10, v3

    :goto_13
    if-eqz v10, :cond_1d

    if-eqz v6, :cond_1c

    const v2, 0x7f13046b

    goto :goto_17

    :cond_1c
    const v2, 0x7f13047b

    goto :goto_17

    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isValid()Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    iget v10, v10, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1e

    move v10, v2

    goto :goto_14

    :cond_1e
    move v10, v3

    :goto_14
    if-eqz v10, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->isChargingOrFull()Z

    move-result v10

    if-eqz v10, :cond_1f

    goto :goto_15

    :cond_1f
    move v2, v3

    :goto_15
    if-eqz v2, :cond_21

    if-eqz v6, :cond_20

    const v2, 0x7f130468

    goto :goto_17

    :cond_20
    const v2, 0x7f130479

    goto :goto_17

    :cond_21
    if-eqz v6, :cond_22

    :goto_16
    const v2, 0x7f130467

    goto :goto_17

    :cond_22
    const v2, 0x7f130475

    :goto_17
    invoke-static {v0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->-$$Nest$mgetBatteryLevelAsPercentage(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_23

    invoke-static {p0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v7, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_23
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v7, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_18
    iget-object v0, v5, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;

    iget-object v2, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_24

    goto :goto_19

    :cond_24
    move v3, v4

    :goto_19
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_25
    return-void
.end method
