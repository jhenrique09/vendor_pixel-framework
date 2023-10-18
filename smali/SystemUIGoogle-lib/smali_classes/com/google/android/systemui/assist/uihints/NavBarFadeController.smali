.class public final Lcom/google/android/systemui/assist/uihints/NavBarFadeController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final navBarFader:Lcom/google/android/systemui/assist/uihints/NavBarFader;

.field public ngaVisible:Z

.field public final onTimeout:Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;

.field public systemVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/NavBarFader;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->navBarFader:Lcom/google/android/systemui/assist/uihints/NavBarFader;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;-><init>(Lcom/google/android/systemui/assist/uihints/NavBarFadeController;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->onTimeout:Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->systemVisible:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->ngaVisible:Z

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->systemVisible:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->ngaVisible:Z

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->onTimeout:Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v0, :cond_0

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->navBarFader:Lcom/google/android/systemui/assist/uihints/NavBarFader;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    cmpg-float v4, v3, v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    iput v3, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v4, v7, v2

    aput v3, v7, v5

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x50

    long-to-float v2, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_2
    return-void
.end method
