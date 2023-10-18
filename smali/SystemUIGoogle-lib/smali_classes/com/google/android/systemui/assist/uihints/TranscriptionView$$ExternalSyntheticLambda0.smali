.class public final synthetic Lcom/google/android/systemui/assist/uihints/TranscriptionView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscription(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
