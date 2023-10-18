.class public final Lcom/google/android/systemui/assist/uihints/TranscriptionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;


# instance fields
.field public mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public final mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

.field public final mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

.field public mHasAccurateBackground:Z

.field public mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public mListener:Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;

.field public mOnGreetingTap:Landroid/app/PendingIntent;

.field public mOnTranscriptionTap:Landroid/app/PendingIntent;

.field public mQueuedCompletion:Ljava/lang/Runnable;

.field public mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public mQueuedStateAnimates:Z

.field public mViewMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    const p3, 0x7f0a07be

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f0a031c

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/systemui/assist/uihints/GreetingView;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f0a01b6

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object p3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getTouchActionRegion()Ljava/util/Optional;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->hasTapAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchRegion()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getTouchInsideRegion()Ljava/util/Optional;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->hasTapAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchRegion()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getTouchRegion()Ljava/util/Optional;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final hasTapAction()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public final maybeSetState()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    sget-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-nez v0, :cond_2

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mListener:Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;

    if-eqz v1, :cond_6

    check-cast v1, Lcom/google/android/systemui/assist/uihints/ScrimController;

    if-eq v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, v1, Lcom/google/android/systemui/assist/uihints/ScrimController;->mTranscriptionVisible:Z

    if-ne v3, v0, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v0, v1, Lcom/google/android/systemui/assist/uihints/ScrimController;->mTranscriptionVisible:Z

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->refresh()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    invoke-interface {v0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda0;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onCardInfo(IZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    invoke-interface {p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->setCardVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    invoke-interface {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->onFontSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    return-void
.end method
