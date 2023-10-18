.class public final Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source ""


# instance fields
.field public final om:Landroid/content/om/OverlayManager;

.field public overlayLabel:Ljava/lang/CharSequence;

.field public overlayPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Landroid/content/om/OverlayManager;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    iput-object p10, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->om:Landroid/content/om/OverlayManager;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "Overlay"

    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->overlayPackage:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->om:Landroid/content/om/OverlayManager;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/om/OverlayManager;->setEnabled(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string p1, "Restarting..."

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    const-wide/16 p0, 0xfa

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method public final handleLongClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const-string v2, "No overlay"

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->om:Landroid/content/om/OverlayManager;

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4, v2}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/om/OverlayInfo;

    iget-object v4, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Landroid/content/om/OverlayInfo;

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->overlayPackage:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->overlayPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->overlayLabel:Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const v0, 0x1080864

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;->overlayLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Enabled"

    goto :goto_2

    :cond_5
    const-string p0, "Disabled"

    :goto_2
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_6
    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method
