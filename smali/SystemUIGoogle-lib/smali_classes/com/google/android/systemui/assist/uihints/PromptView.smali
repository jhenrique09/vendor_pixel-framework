.class public Lcom/google/android/systemui/assist/uihints/PromptView;
.super Landroid/widget/TextView;
.source ""


# instance fields
.field public final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public mEnabled:Z

.field public mHandleString:Ljava/lang/String;

.field public mHasDarkBackground:Z

.field public final mLastConfig:Landroid/content/res/Configuration;

.field public mLastInvocationType:I

.field public final mRiseDistance:F

.field public mSqueezeString:Ljava/lang/String;

.field public final mTextColorDark:I

.field public final mTextColorLight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/PromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/PromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/PromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastConfig:Landroid/content/res/Configuration;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHasDarkBackground:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mEnabled:Z

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604b9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mTextColorDark:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0604ba

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mTextColorLight:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700a8

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mRiseDistance:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f1303cc

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHandleString:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f130837

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mSqueezeString:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHasDarkBackground:Z

    xor-int/lit8 p4, p3, 0x1

    if-eq p4, p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean p4, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHasDarkBackground:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1303cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHandleString:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130837

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mSqueezeString:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0709c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/PromptView;->updateViewHeight()V

    :cond_3
    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/PromptView;->updateViewHeight()V

    return-void
.end method

.method public final updateViewHeight()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mRiseDistance:F

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
