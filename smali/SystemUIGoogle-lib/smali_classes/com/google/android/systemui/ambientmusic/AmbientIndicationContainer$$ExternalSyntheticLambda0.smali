.class public final synthetic Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    sget v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
