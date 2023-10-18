.class public abstract Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mFeedbackEffects:Ljava/util/List;

.field public mNavMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p2, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mNavMode:I

    return-void
.end method


# virtual methods
.method public abstract findFeedbackEffects(Lcom/android/systemui/navigationbar/NavigationBarView;)Ljava/util/List;
.end method

.method public abstract isActiveFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Z
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mNavMode:I

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    return-void
.end method

.method public final onProgress(IF)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->isActiveFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(IF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onRelease()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->refreshFeedbackEffects()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final refreshFeedbackEffects()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mNavMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->validateFeedbackEffects(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->findFeedbackEffects(Lcom/android/systemui/navigationbar/NavigationBarView;)Ljava/util/List;

    move-result-object p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->reset()V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public abstract validateFeedbackEffects(Ljava/util/List;)Z
.end method
