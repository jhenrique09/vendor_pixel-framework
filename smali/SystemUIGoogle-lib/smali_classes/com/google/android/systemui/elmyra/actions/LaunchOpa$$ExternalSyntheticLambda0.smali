.class public final synthetic Lcom/google/android/systemui/elmyra/actions/LaunchOpa$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    check-cast p1, Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "assist_gesture_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    if-eq p1, v1, :cond_1

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_1
    return-void
.end method
