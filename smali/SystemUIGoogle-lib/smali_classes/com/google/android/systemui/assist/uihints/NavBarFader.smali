.class public final Lcom/google/android/systemui/assist/uihints/NavBarFader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public animator:Landroid/animation/ObjectAnimator;

.field public final navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public targetAlpha:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    return-void
.end method
