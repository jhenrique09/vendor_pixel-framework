.class public Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;
.super Lcom/android/systemui/shared/shadow/DoubleShadowTextView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaShellInfo must be set before attaching"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaShellInfo must be set before detaching"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
