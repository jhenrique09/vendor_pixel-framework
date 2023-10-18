.class public final Lcom/google/android/systemui/assist/uihints/AssistantWarmer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final context:Landroid/content/Context;

.field public primed:Z

.field public request:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->context:Landroid/content/Context;

    return-void
.end method
