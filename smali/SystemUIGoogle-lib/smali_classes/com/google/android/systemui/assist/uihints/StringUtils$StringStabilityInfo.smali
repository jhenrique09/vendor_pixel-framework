.class public final Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final stable:Ljava/lang/String;

.field public final unstable:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->unstable:Ljava/lang/String;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->unstable:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->unstable:Ljava/lang/String;

    return-void
.end method
