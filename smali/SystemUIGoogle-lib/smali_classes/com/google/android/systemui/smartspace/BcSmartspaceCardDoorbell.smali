.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;
.source ""


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mGifFrameDurationInMs:I

.field public final mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

.field public mLoadingIcon:Landroid/widget/ImageView;

.field public mLoadingScreenView:Landroid/view/ViewGroup;

.field public mPreviousTargetId:Ljava/lang/String;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public final mUriToDrawable:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mUriToDrawable:Ljava/util/Map;

    const/16 p2, 0xc8

    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mGifFrameDurationInMs:I

    new-instance p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    return-void
.end method


# virtual methods
.method public final maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mPreviousTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mPreviousTargetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mUriToDrawable:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->onFinishInflate()V

    const v0, 0x7f0a041c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    const v0, 0x7f0a037a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a041d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final resetUi()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->resetUi()V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public final setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)Z
    .locals 14

    move-object v8, p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    invoke-direct {v3, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v10, "BcSmartspaceCardBell"

    const v4, 0x7f0702a4

    const v5, 0x7f07029b

    if-nez v3, :cond_6

    if-eqz v0, :cond_2

    const-string v3, "frameDurationMs"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mGifFrameDurationInMs:I

    :cond_2
    iget-object v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLatencyInstrumentContext:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;)V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    iget-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mUriSet:Ljava/util/Set;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v6, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$LatencyInstrumentContext;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v3, 0x16

    invoke-virtual {v0, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V

    iget-object v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;

    const/4 v13, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, v3

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;Landroid/content/ContentResolver;IFLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;I)V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mGifFrameDurationInMs:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    :cond_5
    iget-object v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const-string v0, "imageUri is set"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_6
    if-eqz v0, :cond_9

    const-string v2, "imageBitmap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V

    iget-object v2, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v0, v2, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v2, v1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    iget-object v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "imageBitmap is set"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v9

    :cond_9
    if-eqz v0, :cond_18

    const-string v2, "loadingScreenState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getDimensionRatio(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->maybeResetImageView(Landroid/app/smartspace/SmartspaceTarget;)V

    iget-object v4, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v4, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060423

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingScreenView:Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v4, "progressBarWidth"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_b
    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v4, "progressBarHeight"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060424

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v6, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x4

    if-ne v2, v9, :cond_d

    move v7, v9

    goto :goto_3

    :cond_d
    if-ne v2, v6, :cond_e

    const-string v7, "progressBarVisible"

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_3

    :cond_e
    move v7, v1

    :goto_3
    if-eqz v7, :cond_f

    move v7, v1

    goto :goto_4

    :cond_f
    move v7, v5

    :goto_4
    invoke-static {v3, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    iget-object v2, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    const v4, 0x7f080b54

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_10
    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    iget-object v2, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    const v4, 0x7f080b55

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_11
    if-eq v2, v6, :cond_12

    goto :goto_5

    :cond_12
    const-string v2, "loadingScreenIcon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    :goto_5
    move v2, v1

    goto :goto_7

    :cond_13
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v2, "tintLoadingIcon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_14
    :goto_6
    move v2, v9

    :goto_7
    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    const-string v4, "loadingIconWidth"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_15
    iget-object v3, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    const-string v4, "loadingIconHeight"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_16
    iget-object v0, v8, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mLoadingIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_17

    goto :goto_8

    :cond_17
    move v1, v5

    :goto_8
    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return v9

    :cond_18
    return v1
.end method
