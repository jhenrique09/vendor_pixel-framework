.class public Lcom/google/android/systemui/smartspace/PageIndicator;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public mCurrentPageIndex:I

.field public mNumPages:I

.field public mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/smartspace/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput p2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    return-void
.end method


# virtual methods
.method public final setNumPages(IZ)V
    .locals 6

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total number of pages invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Assuming 1 page."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PageIndicator"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    if-eq p1, v2, :cond_e

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    iget v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-gez v2, :cond_3

    if-eqz p2, :cond_2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    goto :goto_2

    :cond_3
    if-lt v2, p1, :cond_5

    if-eqz p2, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    sub-int/2addr p1, v0

    :goto_1
    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget p2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    sub-int/2addr p1, p2

    move p2, v1

    :goto_3
    if-ge p2, p1, :cond_6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07077a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move p2, v1

    :goto_4
    iget v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    if-ge p2, v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_7

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    goto :goto_5

    :cond_7
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge p2, v3, :cond_8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_6

    :cond_8
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_6
    if-nez p2, :cond_9

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_7

    :cond_9
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_7
    iget v4, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    sub-int/2addr v4, v0

    if-ne p2, v4, :cond_a

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_8

    :cond_a
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge p2, v4, :cond_b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080a3a

    invoke-static {v5, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iget v3, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-ne p2, v3, :cond_c

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_c
    const v3, 0x3ecccccd    # 0.4f

    :goto_a
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f1300d1

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public final setPageOffset(IF)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_2

    const v5, 0x3f7d70a4    # 0.99f

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_5

    :cond_2
    iget v5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-ltz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget v5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-nez v0, :cond_4

    move v0, p1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v3, :cond_6

    mul-float/2addr v5, p2

    add-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v4, v6

    if-gez p2, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v2, p1, 0x2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    iget p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const p1, 0x7f1300d1

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    return-void
.end method
