.class public final synthetic Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/GlowView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

    sget v0, Lcom/google/android/systemui/assist/uihints/GlowView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->updateGlowSizes()V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/GlowView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mTranslationY:I

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mMinimumHeightPx:I

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
