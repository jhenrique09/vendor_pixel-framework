.class public final Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;
.super Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;
.source ""


# instance fields
.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/navigationbar/NavigationModeController;)V

    new-instance p3, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-void
.end method


# virtual methods
.method public final findFeedbackEffects(Lcom/android/systemui/navigationbar/NavigationBarView;)Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->clearViews()V

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    filled-new-array {p0}, [Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isActiveFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final reset()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->reset()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->clearViews()V

    return-void
.end method

.method public final validateFeedbackEffects(Ljava/util/List;)Z
    .locals 4

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    iget-object v2, v1, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_1
    iget-object v0, v1, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->clearViews()V

    :cond_4
    return p1
.end method
