.class public final Lcom/google/android/systemui/qs/tiles/RotationLockTileGoogle;
.super Lcom/android/systemui/qs/tiles/RotationLockTile;
.source ""


# instance fields
.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mIsPerDeviceStateRotationLockEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Landroid/hardware/SensorPrivacyManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;[Ljava/lang/String;Lcom/android/systemui/statusbar/policy/DevicePostureController;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Landroid/hardware/SensorPrivacyManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;)V

    iput-object p15, p0, Lcom/google/android/systemui/qs/tiles/RotationLockTileGoogle;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    array-length p1, p14

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/RotationLockTileGoogle;->mIsPerDeviceStateRotationLockEnabled:Z

    return-void
.end method


# virtual methods
.method public handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    iget-object v0, v0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAllowRotationResolver:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v6, "android.permission.CAMERA"

    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    if-eqz v1, :cond_2

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    iget-object p2, p2, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "camera_autorotate"

    invoke-interface {p2, v7, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(ILjava/lang/String;)I

    move-result p2

    if-ne p2, v4, :cond_1

    move p2, v4

    goto :goto_1

    :cond_1
    move p2, v7

    :goto_1
    if-eqz p2, :cond_2

    move v7, v4

    :cond_2
    xor-int/lit8 p2, v0, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const p2, 0x7f13073e

    invoke-virtual {v5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const p2, 0x7f080a68

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const p2, 0x7f1300c3

    invoke-virtual {v5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-string p2, ""

    if-nez v0, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f13076d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const p2, 0x7f080a69

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_4
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_2
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    const-class p2, Landroid/widget/Switch;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/RotationLockTileGoogle;->mIsPerDeviceStateRotationLockEnabled:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/RotationLockTileGoogle;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    if-ne p0, v4, :cond_6

    const p0, 0x7f13073c

    invoke-virtual {v5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const p0, 0x7f13073d

    invoke-virtual {v5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    :cond_7
    return-void
.end method

.method public final bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/qs/tiles/RotationLockTileGoogle;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method
