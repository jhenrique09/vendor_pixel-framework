.class public final synthetic Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPerformedLongPress:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->mHasPerformedLongPress:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
