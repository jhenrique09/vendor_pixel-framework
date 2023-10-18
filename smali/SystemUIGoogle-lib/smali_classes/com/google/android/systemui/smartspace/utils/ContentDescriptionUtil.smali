.class public abstract Lcom/google/android/systemui/smartspace/utils/ContentDescriptionUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final setFormattedContentDescription(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    move-object v0, p3

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    move-object v0, p2

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130398

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x3

    filled-new-array {p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "setFormattedContentDescription: text=%s, iconDescription=%s, contentDescription=%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
