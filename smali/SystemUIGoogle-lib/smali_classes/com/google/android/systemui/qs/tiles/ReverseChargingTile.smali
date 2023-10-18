.class public final Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mBatteryLevel:I

.field public mListening:Z

.field public mOverHeat:Z

.field public mPowerSave:Z

.field public mReverse:Z

.field public final mSettingsObserver:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;

.field public final mThermalEventListener:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;

.field public final mThermalService:Landroid/os/IThermalService;

.field public mThresholdLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseChargingTile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/IThermalService;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;-><init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;)V

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalEventListener:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;

    new-instance p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;-><init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mSettingsObserver:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;

    iput-object p10, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {p10, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    iput-object p11, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.REVERSE_CHARGING_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130769

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    sget-boolean p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleClick(): rtx="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",this="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ReverseChargingTile"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->setReverseState(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HasSeenReverseBottomSheet"

    invoke-static {v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.REVERSE_CHARGING_BOTTOM_SHEET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final handleDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mListening:Z

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalEventListener:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;

    iget-object v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mSettingsObserver:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalService:Landroid/os/IThermalService;

    const-string v4, "ReverseChargingTile"

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->updateThresholdLevel()V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "advanced_battery_usage_amount"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x3

    :try_start_0
    invoke-interface {v3, v0, v1}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Could not register thermal event listener, exception: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-interface {v3, v1}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOverHeat(): current skin status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", temperature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/Temperature;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isOverHeat(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iput-boolean v6, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_2
    invoke-interface {v3, v0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not unregister thermal event listener, exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSetListening(): rtx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",listening="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    iget v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    iget v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    :cond_4
    :goto_3
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v4, :cond_5

    const v1, 0x7f080a6d

    goto :goto_4

    :cond_5
    const v1, 0x7f080a6c

    :goto_4
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    const v1, 0x7f130886

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    if-eqz v1, :cond_7

    const v1, 0x7f13070a

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_8

    const v1, 0x7f1309d0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    const v1, 0x7f13052a

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    sget-boolean p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleUpdateState(): ps="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",wlc="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",low="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",over="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",rtx="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReverseChargingTile"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isReverseSupported()Z

    move-result p0

    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    iget-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isReverseOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    sget-boolean p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onBatteryLevelChanged(): rtx="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",level="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",threshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    const-string p3, "ReverseChargingTile"

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/volume/MediaSessions$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final onReverseChanged(ILjava/lang/String;Z)V
    .locals 3

    sget-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onReverseChanged(): rtx="

    const-string v1, ",level="

    const-string v2, ",name="

    invoke-static {v0, p3, v1, p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReverseChargingTile"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p3, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateThresholdLevel()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_battery_usage_amount"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    sget-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateThresholdLevel(): rtx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    const-string v1, "ReverseChargingTile"

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/volume/MediaSessions$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
