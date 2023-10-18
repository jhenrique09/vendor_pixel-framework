.class public Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

.field public mAnimateSmartspaceUpdate:Z

.field public final mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

.field public mCardPosition:I

.field public mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

.field public mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public mIsAodEnabled:Z

.field public final mLastReceivedTargets:Landroid/util/ArraySet;

.field public final mOnPageChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

.field public mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

.field public mPendingTargets:Ljava/util/List;

.field public mPreviousDozeAmount:F

.field public mRunningAnimation:Landroid/animation/Animator;

.field public mScrollState:I

.field public mSplitShadeEnabled:Z

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BcSmartspaceView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/systemui/smartspace/DefaultBcSmartspaceConfigProvider;

    invoke-direct {p1}, Lcom/google/android/systemui/smartspace/DefaultBcSmartspaceConfigProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreviousDozeAmount:F

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSplitShadeEnabled:Z

    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    new-instance p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;-><init>(Landroid/view/View;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mOnPageChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    return-void
.end method


# virtual methods
.method public final animateSmartspaceUpdate(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07029e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    const/4 v9, 0x1

    aput v8, v5, v9

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    aput v8, v4, v6

    aput v7, v4, v9

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/view/ViewGroup;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getCurrentCardTopPadding()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v2, v2, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final getSelectedPage()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    return p0
.end method

.method public final logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V
    .locals 5

    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    if-ne p3, v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BcSmartspaceView"

    const-string v2, "received_latency_millis will be -1 due to exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->containsValidTemplateType(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v1

    new-instance v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v3

    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v3

    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v4, v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    iget v3, v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-static {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    iput p2, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mRank:I

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result p2

    iput p2, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mCardinality:I

    iput v0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mReceivedLatency:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->getUid(Landroid/content/pm/PackageManager;Landroid/app/smartspace/SmartspaceTarget;)I

    move-result p0

    iput p0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/SmartspaceTarget;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    move-result-object p0

    :goto_1
    iput-object p0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mSubcardInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createDimensionalLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    move-result-object p0

    iput-object p0, v2, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDimensionalInfo:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceCardDimensionalInfo;

    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {p0, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->tryForcePrimaryFeatureTypeOrUpdateLogInfoFromTemplateData(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->tryForcePrimaryFeatureTypeAndInjectWeatherSubcard(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/SmartspaceTarget;)V

    :goto_2
    invoke-static {p3, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 6

    const-string v0, "doze_always_on"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mOnPageChangeListener:Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    :cond_0
    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/smartspace/PageIndicator;->setNumPages(IZ)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    const-string v2, "lockscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v2, v0, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v5, v1

    :cond_1
    iput-boolean v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BcSmartspaceView"

    const-string v2, "Unable to register Doze Always on content observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    :cond_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a06d6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a06d8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/PageIndicator;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lez v0, :cond_0

    if-ge v0, v1, :cond_0

    int-to-float p2, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resetPivot()V

    :goto_0
    return-void
.end method

.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", onTargetsAvailable called. Callers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BcSmartspaceView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    targets.size() = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    targets = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v2

    if-le v2, v3, :cond_1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    return-void

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v4

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v5, v5, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v4, :cond_2

    iget-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v6}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object v1, v7

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    iget-object v7, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v7, v7, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-eqz v7, :cond_3

    iget-object v7, v7, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    goto :goto_1

    :cond_3
    move-object v7, v2

    :goto_1
    iget-object v8, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v8, v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    iget-object v8, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v9, v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_aodTargets:Ljava/util/List;

    move-object v10, v9

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v11, v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_lockscreenTargets:Ljava/util/List;

    move-object v12, v11

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    iput-boolean v13, v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->hasDifferentTargets:Z

    iget-object v14, v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iput-object v2, v14, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    check-cast v2, Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v15

    const/16 v13, 0x22

    if-ne v15, v13, :cond_5

    move v13, v3

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_6

    iput-object v2, v14, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    move v2, v3

    goto :goto_7

    :cond_6
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v13

    const/4 v15, 0x3

    if-eqz v13, :cond_8

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    if-nez v13, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v3, "SCREEN_EXTRA"

    invoke-virtual {v13, v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_6

    :cond_8
    :goto_5
    move v3, v15

    :goto_6
    and-int/lit8 v13, v3, 0x2

    if-eqz v13, :cond_9

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    and-int/lit8 v13, v3, 0x1

    if-eqz v13, :cond_a

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eq v3, v15, :cond_b

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->hasDifferentTargets:Z

    goto :goto_7

    :cond_b
    const/4 v2, 0x1

    :goto_7
    move v3, v2

    const/4 v13, 0x0

    goto :goto_3

    :cond_c
    iget-object v1, v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;->isDefaultDateWeatherDisabled()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v8, v9}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->addDefaultDateCardIfEmpty(Ljava/util/List;)V

    invoke-virtual {v8, v11}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->addDefaultDateCardIfEmpty(Ljava/util/List;)V

    :cond_d
    invoke-virtual {v8}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateTargetVisibility()V

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v1, v4}, Lcom/google/android/systemui/smartspace/PageIndicator;->setNumPages(IZ)V

    :cond_e
    if-eqz v4, :cond_f

    add-int/lit8 v2, v1, -0x1

    sub-int v3, v1, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v4, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/google/android/systemui/smartspace/PageIndicator;->setPageOffset(IF)V

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    iget-boolean v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    if-eqz v2, :cond_11

    if-eqz v7, :cond_10

    invoke-virtual {v0, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->animateSmartspaceUpdate(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_9

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v0, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->animateSmartspaceUpdate(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_11
    :goto_9
    move v13, v3

    :goto_a
    if-ge v13, v1, :cond_14

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v2, v13}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {v0, v2, v13, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    new-instance v3, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v3, v2}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    :cond_12
    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_14
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v2, v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-direct {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_1
    return-void
.end method

.method public final registerConfigProvider(Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mConfigProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->configProvider:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    return-void
.end method

.method public final registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object p0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    return-void
.end method

.method public final setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dndImage:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dndDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setDozeAmount(F)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    iput p1, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    iget v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->previousDozeAmount:F

    cmpl-float v3, v2, p1

    if-lez v3, :cond_0

    sget-object v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->TO_LOCKSCREEN:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    goto :goto_0

    :cond_0
    cmpg-float v2, v2, p1

    if-gez v2, :cond_1

    sget-object v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->TO_AOD:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->NOT_IN_TRANSITION:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    :goto_0
    iput-object v2, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->transitioningTo:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    iput p1, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->previousDozeAmount:F

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateTargetVisibility()V

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateCurrentTextColor()V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-boolean v0, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->hasAodLockscreenTransition:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreviousDozeAmount:F

    cmpl-float v4, p1, v0

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    goto :goto_3

    :cond_3
    cmpl-float v0, v0, p1

    if-lez v0, :cond_4

    sub-float/2addr v3, p1

    goto :goto_1

    :cond_4
    move v3, p1

    :goto_1
    const v0, 0x3eb851ec    # 0.36f

    cmpg-float v4, v3, v0

    if-gez v4, :cond_5

    sub-float v3, v0, v3

    goto :goto_2

    :cond_5
    sub-float/2addr v3, v0

    const v0, 0x3f23d70a    # 0.64f

    :goto_2
    div-float/2addr v3, v0

    :cond_6
    :goto_3
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v4}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/systemui/smartspace/PageIndicator;->setNumPages(IZ)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_7
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPreviousDozeAmount:F

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-boolean v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->hasDifferentTargets:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->smartspaceTargets:Ljava/util/List;

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result p1

    add-int/2addr p1, v3

    goto :goto_4

    :cond_8
    move p1, v2

    :goto_4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setPageOffset(IF)V

    :cond_9
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dozeAmount:F

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->DEBUG:Z

    const-string v1, "BcSmartspaceView"

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, currentSurface = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p1

    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    if-nez p1, :cond_d

    const-string p1, "Current card is not present in the Adapter; cannot log."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    :goto_5
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_e

    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v3, Landroid/app/smartspace/SmartspaceTarget$Builder;

    const-string v4, "upcoming_alarm_card_94510_12684"

    invoke-direct {v3, v4, p1, v1}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/16 p1, 0x17

    invoke-virtual {v3, p1}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->getHolidayAlarmText(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    :cond_e
    return-void
.end method

.method public final setDozing(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSplitShadeEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-boolean v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->hasAodLockscreenTransition:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->_lockscreenTargets:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->isMediaPreferred(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->keyguardBypassEnabled:Z

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mediaTargets:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public final setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method public final setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sIntentStarter:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    return-void
.end method

.method public final setKeyguardBypassEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->keyguardBypassEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateTargetVisibility()V

    return-void
.end method

.method public final setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    return-void
.end method

.method public final setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->nextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iput-object p1, v0, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object p2, v0, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iput p1, v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->primaryTextColor:I

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateCurrentTextColor()V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSplitShadeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSplitShadeEnabled:Z

    return-void
.end method

.method public final setUiSurface(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->uiSurface:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call before attaching view to window."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
