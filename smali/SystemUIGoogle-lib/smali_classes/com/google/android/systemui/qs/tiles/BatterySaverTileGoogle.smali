.class public final Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;
.super Lcom/android/systemui/qs/tiles/BatterySaverTile;
.source ""


# instance fields
.field public mExtreme:Z


# virtual methods
.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;->mExtreme:Z

    if-eqz p2, :cond_0

    const p2, 0x7f13035d

    goto :goto_0

    :cond_0
    const p2, 0x7f130838

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    const-string p0, ""

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_1
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public final onExtremeBatterySaverChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;->mExtreme:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;->mExtreme:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
