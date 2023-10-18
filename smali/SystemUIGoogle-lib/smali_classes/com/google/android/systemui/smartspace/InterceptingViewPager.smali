.class public Lcom/google/android/systemui/smartspace/InterceptingViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# instance fields
.field public mHasPerformedLongPress:Z

.field public mHasPostedLongPress:Z

.field public final mLongPressCallback:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;

.field public final mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

.field public final mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final cancelScheduledLongPress()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPostedLongPress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPostedLongPress:Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPerformedLongPress:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPostedLongPress:Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mLongPressCallback:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    return v2

    :cond_3
    iget v0, p2, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p2, p2, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-super {p2, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_2

    :goto_1
    invoke-super {p2, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->cancelScheduledLongPress()V

    return v2

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnIntercept:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mSuperOnTouch:Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->handleTouchOverride(Landroid/view/MotionEvent;Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda0;)Z

    move-result p0

    return p0
.end method
