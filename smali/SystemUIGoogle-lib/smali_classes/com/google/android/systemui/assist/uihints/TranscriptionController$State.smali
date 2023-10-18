.class public final enum Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const-string v1, "TRANSCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const-string v2, "GREETING"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const-string v3, "CHIPS"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const-string v4, "NONE"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0}, [Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    return-object v0
.end method
