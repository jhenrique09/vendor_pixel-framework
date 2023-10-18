.class public final Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# instance fields
.field public final synthetic $listener:Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

.field public final synthetic $tileSpec:Ljava/lang/String;

.field public final synthetic this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/systemui/qs/launcher/LauncherTileService;Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;->$tileSpec:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iput-object p3, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;->$listener:Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 5

    new-instance v0, Lcom/google/android/systemui/qs/launcher/TileState;

    invoke-direct {v0}, Lcom/google/android/systemui/qs/launcher/TileState;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;->$tileSpec:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mTileSpec:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput v2, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mState:I

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mState:I

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mLabel:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->subtitleIdsMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->getSubtitleId(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    invoke-virtual {v3}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/android/systemui/plugins/qs/QSTile$State;->getStateText(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->getSecondaryLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mSubtitle:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    iput-boolean v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mIsTransient:Z

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_1
    instance-of v4, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    if-eqz v4, :cond_2

    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    iget v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-virtual {v3}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_2
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mSupportClick:Z

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    iput-boolean v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mSupportLongClick:Z

    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    if-eqz v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    iput-boolean v2, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mShowChevron:Z

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mContentDescription:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object p1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mStateDescription:Ljava/lang/CharSequence;

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;->$listener:Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

    check-cast p0, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub$Proxy;->onTileUpdated(Lcom/google/android/systemui/qs/launcher/TileState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "LauncherTileService"

    const-string v0, "Failed to call onTileUpdated"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
