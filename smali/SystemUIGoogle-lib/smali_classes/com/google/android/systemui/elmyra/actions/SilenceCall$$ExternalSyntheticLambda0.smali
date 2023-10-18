.class public final synthetic Lcom/google/android/systemui/elmyra/actions/SilenceCall$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->updatePhoneStateListener()V

    return-void
.end method
