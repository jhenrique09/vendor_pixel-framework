.class public final synthetic Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

.field public final synthetic f$1:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowView;Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    check-cast p1, Landroid/widget/ImageView;

    sget v1, Lcom/google/android/systemui/assist/uihints/GlowView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
