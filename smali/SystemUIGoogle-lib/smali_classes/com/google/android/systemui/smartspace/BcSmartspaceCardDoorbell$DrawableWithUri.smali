.class public final Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;
.super Landroid/graphics/drawable/DrawableWrapper;
.source ""


# instance fields
.field public final mClipPath:Landroid/graphics/Path;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mHeightInPx:I

.field public final mImageViewWeakReference:Ljava/lang/ref/WeakReference;

.field public final mLoadingScreenWeakReference:Ljava/lang/ref/WeakReference;

.field public final mRoundedCornersRadius:F

.field public final mTempRect:Landroid/graphics/RectF;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(FILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mTempRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mRoundedCornersRadius:F

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mUri:Landroid/net/Uri;

    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mHeightInPx:I

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mImageViewWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mLoadingScreenWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->draw$com$android$launcher3$icons$RoundDrawableWrapper(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final draw$com$android$launcher3$icons$RoundDrawableWrapper(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final bridge synthetic onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->onBoundsChange$com$android$launcher3$icons$RoundDrawableWrapper(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onBoundsChange$com$android$launcher3$icons$RoundDrawableWrapper(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mTempRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;->mRoundedCornersRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method
