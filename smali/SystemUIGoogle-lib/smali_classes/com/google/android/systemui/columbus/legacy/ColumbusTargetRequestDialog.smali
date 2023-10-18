.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source ""


# instance fields
.field public mContent:Landroid/widget/TextView;

.field public mNegativeButton:Landroid/widget/Button;

.field public mPositiveButton:Landroid/widget/Button;

.field public mTitle:Landroid/widget/TextView;


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0072

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f0a07a0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a01dc

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mContent:Landroid/widget/TextView;

    const p1, 0x7f0a05a4

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mPositiveButton:Landroid/widget/Button;

    const p1, 0x7f0a0525

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mNegativeButton:Landroid/widget/Button;

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
