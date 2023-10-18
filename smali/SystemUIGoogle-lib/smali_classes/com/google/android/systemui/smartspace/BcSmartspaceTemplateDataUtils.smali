.class public abstract Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getSecondaryCardRes(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f0d0270

    return p0

    :pswitch_1
    const p0, 0x7f0d026c

    return p0

    :pswitch_2
    const p0, 0x7f0d026f

    return p0

    :pswitch_3
    const p0, 0x7f0d026a

    return p0

    :pswitch_4
    const p0, 0x7f0d0272

    return p0

    :pswitch_5
    const p0, 0x7f0d0271

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static offsetImageViewForIcon(Landroid/widget/ImageView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void

    :cond_0
    iget p1, p1, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->mIconInsetSize:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public static offsetTextViewForIcon(Landroid/widget/TextView;Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    iget p1, p1, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->mIconInsetSize:I

    mul-int/2addr p2, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method public static setIcon(Landroid/widget/ImageView;Landroid/app/smartspace/uitemplatedata/Icon;)V
    .locals 2

    const-string v0, "BcSmartspaceTemplateDataUtils"

    if-nez p0, :cond_0

    const-string p0, "Cannot set. The image view is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "Cannot set. The given icon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V
    .locals 2

    const-string v0, "BcSmartspaceTemplateDataUtils"

    if-nez p0, :cond_0

    const-string p0, "Cannot set. The text view is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Cannot set. The given text is empty"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Text;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Text;->getTruncateAtType()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/Text;->getMaxLines()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public static updateVisibility(Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
