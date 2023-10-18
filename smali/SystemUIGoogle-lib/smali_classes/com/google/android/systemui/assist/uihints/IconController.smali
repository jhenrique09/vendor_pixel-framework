.class public final Lcom/google/android/systemui/assist/uihints/IconController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;


# instance fields
.field public mHasAccurateLuma:Z

.field public final mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

.field public mKeyboardIconRequested:Z

.field public mOnKeyboardIconTap:Landroid/app/PendingIntent;

.field public mOnZerostateIconTap:Landroid/app/PendingIntent;

.field public final mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

.field public mZerostateIconRequested:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a039f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/IconController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08be

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/IconController;I)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getTouchActionRegion()Ljava/util/Optional;
    .locals 3

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final maybeUpdateIconVisibility(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mHasAccurateLuma:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/KeyboardIconView;->mKeyboardIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0807dc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;->mZeroStateIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f08079e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
