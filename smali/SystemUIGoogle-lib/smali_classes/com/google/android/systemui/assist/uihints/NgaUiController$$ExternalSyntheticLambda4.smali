.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLightnessUpdate(F)V
    .locals 7

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iget-wide v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    sub-long/2addr v0, v4

    sget-boolean v4, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got lightness update ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ") after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NgaUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/systemui/assist/uihints/IconController;->mHasAccurateLuma:Z

    iget-object v2, v0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    iget-boolean v3, v0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIconRequested:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    iget-object v2, v0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    iget-boolean v3, v0, Lcom/google/android/systemui/assist/uihints/IconController;->mZerostateIconRequested:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mGlowController:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    iget-object v4, v0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget-object v5, v4, Lcom/google/android/systemui/assist/uihints/GlowView;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v6, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, v4, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v4, Lcom/google/android/systemui/assist/uihints/GlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iput p1, v0, Lcom/google/android/systemui/assist/uihints/GlowController;->mMedianLightness:F

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    iput-boolean v1, v0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mHaveAccurateLightness:Z

    iput p1, v0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mMedianLightness:F

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->refresh()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-boolean v0, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    if-eq v0, v1, :cond_4

    iput-boolean v1, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    :cond_4
    if-gtz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorChangeHandler:Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;

    iput-boolean v1, p1, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mIsDark:Z

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->sendColor()V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->dispatchHasDarkBackground()V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void
.end method
