import * as jspb from 'google-protobuf'



export class FileDescriptorSet extends jspb.Message {
  getFileList(): Array<FileDescriptorProto>;
  setFileList(value: Array<FileDescriptorProto>): FileDescriptorSet;
  clearFileList(): FileDescriptorSet;
  addFile(value?: FileDescriptorProto, index?: number): FileDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FileDescriptorSet.AsObject;
  static toObject(includeInstance: boolean, msg: FileDescriptorSet): FileDescriptorSet.AsObject;
  static serializeBinaryToWriter(message: FileDescriptorSet, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FileDescriptorSet;
  static deserializeBinaryFromReader(message: FileDescriptorSet, reader: jspb.BinaryReader): FileDescriptorSet;
}

export namespace FileDescriptorSet {
  export type AsObject = {
    fileList: Array<FileDescriptorProto.AsObject>,
  }
}

export class FileDescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): FileDescriptorProto;
  hasName(): boolean;
  clearName(): FileDescriptorProto;

  getPackage(): string;
  setPackage(value: string): FileDescriptorProto;
  hasPackage(): boolean;
  clearPackage(): FileDescriptorProto;

  getDependencyList(): Array<string>;
  setDependencyList(value: Array<string>): FileDescriptorProto;
  clearDependencyList(): FileDescriptorProto;
  addDependency(value: string, index?: number): FileDescriptorProto;

  getPublicDependencyList(): Array<number>;
  setPublicDependencyList(value: Array<number>): FileDescriptorProto;
  clearPublicDependencyList(): FileDescriptorProto;
  addPublicDependency(value: number, index?: number): FileDescriptorProto;

  getWeakDependencyList(): Array<number>;
  setWeakDependencyList(value: Array<number>): FileDescriptorProto;
  clearWeakDependencyList(): FileDescriptorProto;
  addWeakDependency(value: number, index?: number): FileDescriptorProto;

  getMessageTypeList(): Array<DescriptorProto>;
  setMessageTypeList(value: Array<DescriptorProto>): FileDescriptorProto;
  clearMessageTypeList(): FileDescriptorProto;
  addMessageType(value?: DescriptorProto, index?: number): DescriptorProto;

  getEnumTypeList(): Array<EnumDescriptorProto>;
  setEnumTypeList(value: Array<EnumDescriptorProto>): FileDescriptorProto;
  clearEnumTypeList(): FileDescriptorProto;
  addEnumType(value?: EnumDescriptorProto, index?: number): EnumDescriptorProto;

  getServiceList(): Array<ServiceDescriptorProto>;
  setServiceList(value: Array<ServiceDescriptorProto>): FileDescriptorProto;
  clearServiceList(): FileDescriptorProto;
  addService(value?: ServiceDescriptorProto, index?: number): ServiceDescriptorProto;

  getExtensionList(): Array<FieldDescriptorProto>;
  setExtensionList(value: Array<FieldDescriptorProto>): FileDescriptorProto;
  clearExtensionList(): FileDescriptorProto;
  addExtension(value?: FieldDescriptorProto, index?: number): FieldDescriptorProto;

  getOptions(): FileOptions | undefined;
  setOptions(value?: FileOptions): FileDescriptorProto;
  hasOptions(): boolean;
  clearOptions(): FileDescriptorProto;

  getSourceCodeInfo(): SourceCodeInfo | undefined;
  setSourceCodeInfo(value?: SourceCodeInfo): FileDescriptorProto;
  hasSourceCodeInfo(): boolean;
  clearSourceCodeInfo(): FileDescriptorProto;

  getSyntax(): string;
  setSyntax(value: string): FileDescriptorProto;
  hasSyntax(): boolean;
  clearSyntax(): FileDescriptorProto;

  getEdition(): Edition;
  setEdition(value: Edition): FileDescriptorProto;
  hasEdition(): boolean;
  clearEdition(): FileDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FileDescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: FileDescriptorProto): FileDescriptorProto.AsObject;
  static serializeBinaryToWriter(message: FileDescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FileDescriptorProto;
  static deserializeBinaryFromReader(message: FileDescriptorProto, reader: jspb.BinaryReader): FileDescriptorProto;
}

export namespace FileDescriptorProto {
  export type AsObject = {
    name?: string,
    pb_package?: string,
    dependencyList: Array<string>,
    publicDependencyList: Array<number>,
    weakDependencyList: Array<number>,
    messageTypeList: Array<DescriptorProto.AsObject>,
    enumTypeList: Array<EnumDescriptorProto.AsObject>,
    serviceList: Array<ServiceDescriptorProto.AsObject>,
    extensionList: Array<FieldDescriptorProto.AsObject>,
    options?: FileOptions.AsObject,
    sourceCodeInfo?: SourceCodeInfo.AsObject,
    syntax?: string,
    edition?: Edition,
  }
}

export class DescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): DescriptorProto;
  hasName(): boolean;
  clearName(): DescriptorProto;

  getFieldList(): Array<FieldDescriptorProto>;
  setFieldList(value: Array<FieldDescriptorProto>): DescriptorProto;
  clearFieldList(): DescriptorProto;
  addField(value?: FieldDescriptorProto, index?: number): FieldDescriptorProto;

  getExtensionList(): Array<FieldDescriptorProto>;
  setExtensionList(value: Array<FieldDescriptorProto>): DescriptorProto;
  clearExtensionList(): DescriptorProto;
  addExtension(value?: FieldDescriptorProto, index?: number): FieldDescriptorProto;

  getNestedTypeList(): Array<DescriptorProto>;
  setNestedTypeList(value: Array<DescriptorProto>): DescriptorProto;
  clearNestedTypeList(): DescriptorProto;
  addNestedType(value?: DescriptorProto, index?: number): DescriptorProto;

  getEnumTypeList(): Array<EnumDescriptorProto>;
  setEnumTypeList(value: Array<EnumDescriptorProto>): DescriptorProto;
  clearEnumTypeList(): DescriptorProto;
  addEnumType(value?: EnumDescriptorProto, index?: number): EnumDescriptorProto;

  getExtensionRangeList(): Array<DescriptorProto.ExtensionRange>;
  setExtensionRangeList(value: Array<DescriptorProto.ExtensionRange>): DescriptorProto;
  clearExtensionRangeList(): DescriptorProto;
  addExtensionRange(value?: DescriptorProto.ExtensionRange, index?: number): DescriptorProto.ExtensionRange;

  getOneofDeclList(): Array<OneofDescriptorProto>;
  setOneofDeclList(value: Array<OneofDescriptorProto>): DescriptorProto;
  clearOneofDeclList(): DescriptorProto;
  addOneofDecl(value?: OneofDescriptorProto, index?: number): OneofDescriptorProto;

  getOptions(): MessageOptions | undefined;
  setOptions(value?: MessageOptions): DescriptorProto;
  hasOptions(): boolean;
  clearOptions(): DescriptorProto;

  getReservedRangeList(): Array<DescriptorProto.ReservedRange>;
  setReservedRangeList(value: Array<DescriptorProto.ReservedRange>): DescriptorProto;
  clearReservedRangeList(): DescriptorProto;
  addReservedRange(value?: DescriptorProto.ReservedRange, index?: number): DescriptorProto.ReservedRange;

  getReservedNameList(): Array<string>;
  setReservedNameList(value: Array<string>): DescriptorProto;
  clearReservedNameList(): DescriptorProto;
  addReservedName(value: string, index?: number): DescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: DescriptorProto): DescriptorProto.AsObject;
  static serializeBinaryToWriter(message: DescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DescriptorProto;
  static deserializeBinaryFromReader(message: DescriptorProto, reader: jspb.BinaryReader): DescriptorProto;
}

export namespace DescriptorProto {
  export type AsObject = {
    name?: string,
    fieldList: Array<FieldDescriptorProto.AsObject>,
    extensionList: Array<FieldDescriptorProto.AsObject>,
    nestedTypeList: Array<DescriptorProto.AsObject>,
    enumTypeList: Array<EnumDescriptorProto.AsObject>,
    extensionRangeList: Array<DescriptorProto.ExtensionRange.AsObject>,
    oneofDeclList: Array<OneofDescriptorProto.AsObject>,
    options?: MessageOptions.AsObject,
    reservedRangeList: Array<DescriptorProto.ReservedRange.AsObject>,
    reservedNameList: Array<string>,
  }

  export class ExtensionRange extends jspb.Message {
    getStart(): number;
    setStart(value: number): ExtensionRange;
    hasStart(): boolean;
    clearStart(): ExtensionRange;

    getEnd(): number;
    setEnd(value: number): ExtensionRange;
    hasEnd(): boolean;
    clearEnd(): ExtensionRange;

    getOptions(): ExtensionRangeOptions | undefined;
    setOptions(value?: ExtensionRangeOptions): ExtensionRange;
    hasOptions(): boolean;
    clearOptions(): ExtensionRange;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): ExtensionRange.AsObject;
    static toObject(includeInstance: boolean, msg: ExtensionRange): ExtensionRange.AsObject;
    static serializeBinaryToWriter(message: ExtensionRange, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): ExtensionRange;
    static deserializeBinaryFromReader(message: ExtensionRange, reader: jspb.BinaryReader): ExtensionRange;
  }

  export namespace ExtensionRange {
    export type AsObject = {
      start?: number,
      end?: number,
      options?: ExtensionRangeOptions.AsObject,
    }
  }


  export class ReservedRange extends jspb.Message {
    getStart(): number;
    setStart(value: number): ReservedRange;
    hasStart(): boolean;
    clearStart(): ReservedRange;

    getEnd(): number;
    setEnd(value: number): ReservedRange;
    hasEnd(): boolean;
    clearEnd(): ReservedRange;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): ReservedRange.AsObject;
    static toObject(includeInstance: boolean, msg: ReservedRange): ReservedRange.AsObject;
    static serializeBinaryToWriter(message: ReservedRange, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): ReservedRange;
    static deserializeBinaryFromReader(message: ReservedRange, reader: jspb.BinaryReader): ReservedRange;
  }

  export namespace ReservedRange {
    export type AsObject = {
      start?: number,
      end?: number,
    }
  }

}

export class ExtensionRangeOptions extends jspb.Message {
  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): ExtensionRangeOptions;
  clearUninterpretedOptionList(): ExtensionRangeOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  getDeclarationList(): Array<ExtensionRangeOptions.Declaration>;
  setDeclarationList(value: Array<ExtensionRangeOptions.Declaration>): ExtensionRangeOptions;
  clearDeclarationList(): ExtensionRangeOptions;
  addDeclaration(value?: ExtensionRangeOptions.Declaration, index?: number): ExtensionRangeOptions.Declaration;

  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): ExtensionRangeOptions;
  hasFeatures(): boolean;
  clearFeatures(): ExtensionRangeOptions;

  getVerification(): ExtensionRangeOptions.VerificationState;
  setVerification(value: ExtensionRangeOptions.VerificationState): ExtensionRangeOptions;
  hasVerification(): boolean;
  clearVerification(): ExtensionRangeOptions;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ExtensionRangeOptions.AsObject;
  static toObject(includeInstance: boolean, msg: ExtensionRangeOptions): ExtensionRangeOptions.AsObject;
  static serializeBinaryToWriter(message: ExtensionRangeOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ExtensionRangeOptions;
  static deserializeBinaryFromReader(message: ExtensionRangeOptions, reader: jspb.BinaryReader): ExtensionRangeOptions;
}

export namespace ExtensionRangeOptions {
  export type AsObject = {
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
    declarationList: Array<ExtensionRangeOptions.Declaration.AsObject>,
    features?: FeatureSet.AsObject,
    verification?: ExtensionRangeOptions.VerificationState,
  }

  export class Declaration extends jspb.Message {
    getNumber(): number;
    setNumber(value: number): Declaration;
    hasNumber(): boolean;
    clearNumber(): Declaration;

    getFullName(): string;
    setFullName(value: string): Declaration;
    hasFullName(): boolean;
    clearFullName(): Declaration;

    getType(): string;
    setType(value: string): Declaration;
    hasType(): boolean;
    clearType(): Declaration;

    getReserved(): boolean;
    setReserved(value: boolean): Declaration;
    hasReserved(): boolean;
    clearReserved(): Declaration;

    getRepeated(): boolean;
    setRepeated(value: boolean): Declaration;
    hasRepeated(): boolean;
    clearRepeated(): Declaration;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Declaration.AsObject;
    static toObject(includeInstance: boolean, msg: Declaration): Declaration.AsObject;
    static serializeBinaryToWriter(message: Declaration, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Declaration;
    static deserializeBinaryFromReader(message: Declaration, reader: jspb.BinaryReader): Declaration;
  }

  export namespace Declaration {
    export type AsObject = {
      number?: number,
      fullName?: string,
      type?: string,
      reserved?: boolean,
      repeated?: boolean,
    }
  }


  export enum VerificationState { 
    DECLARATION = 0,
    UNVERIFIED = 1,
  }
}

export class FieldDescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): FieldDescriptorProto;
  hasName(): boolean;
  clearName(): FieldDescriptorProto;

  getNumber(): number;
  setNumber(value: number): FieldDescriptorProto;
  hasNumber(): boolean;
  clearNumber(): FieldDescriptorProto;

  getLabel(): FieldDescriptorProto.Label;
  setLabel(value: FieldDescriptorProto.Label): FieldDescriptorProto;
  hasLabel(): boolean;
  clearLabel(): FieldDescriptorProto;

  getType(): FieldDescriptorProto.Type;
  setType(value: FieldDescriptorProto.Type): FieldDescriptorProto;
  hasType(): boolean;
  clearType(): FieldDescriptorProto;

  getTypeName(): string;
  setTypeName(value: string): FieldDescriptorProto;
  hasTypeName(): boolean;
  clearTypeName(): FieldDescriptorProto;

  getExtendee(): string;
  setExtendee(value: string): FieldDescriptorProto;
  hasExtendee(): boolean;
  clearExtendee(): FieldDescriptorProto;

  getDefaultValue(): string;
  setDefaultValue(value: string): FieldDescriptorProto;
  hasDefaultValue(): boolean;
  clearDefaultValue(): FieldDescriptorProto;

  getOneofIndex(): number;
  setOneofIndex(value: number): FieldDescriptorProto;
  hasOneofIndex(): boolean;
  clearOneofIndex(): FieldDescriptorProto;

  getJsonName(): string;
  setJsonName(value: string): FieldDescriptorProto;
  hasJsonName(): boolean;
  clearJsonName(): FieldDescriptorProto;

  getOptions(): FieldOptions | undefined;
  setOptions(value?: FieldOptions): FieldDescriptorProto;
  hasOptions(): boolean;
  clearOptions(): FieldDescriptorProto;

  getProto3Optional(): boolean;
  setProto3Optional(value: boolean): FieldDescriptorProto;
  hasProto3Optional(): boolean;
  clearProto3Optional(): FieldDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FieldDescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: FieldDescriptorProto): FieldDescriptorProto.AsObject;
  static serializeBinaryToWriter(message: FieldDescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FieldDescriptorProto;
  static deserializeBinaryFromReader(message: FieldDescriptorProto, reader: jspb.BinaryReader): FieldDescriptorProto;
}

export namespace FieldDescriptorProto {
  export type AsObject = {
    name?: string,
    number?: number,
    label?: FieldDescriptorProto.Label,
    type?: FieldDescriptorProto.Type,
    typeName?: string,
    extendee?: string,
    defaultValue?: string,
    oneofIndex?: number,
    jsonName?: string,
    options?: FieldOptions.AsObject,
    proto3Optional?: boolean,
  }

  export enum Type { 
    TYPE_DOUBLE = 1,
    TYPE_FLOAT = 2,
    TYPE_INT64 = 3,
    TYPE_UINT64 = 4,
    TYPE_INT32 = 5,
    TYPE_FIXED64 = 6,
    TYPE_FIXED32 = 7,
    TYPE_BOOL = 8,
    TYPE_STRING = 9,
    TYPE_GROUP = 10,
    TYPE_MESSAGE = 11,
    TYPE_BYTES = 12,
    TYPE_UINT32 = 13,
    TYPE_ENUM = 14,
    TYPE_SFIXED32 = 15,
    TYPE_SFIXED64 = 16,
    TYPE_SINT32 = 17,
    TYPE_SINT64 = 18,
  }

  export enum Label { 
    LABEL_OPTIONAL = 1,
    LABEL_REPEATED = 3,
    LABEL_REQUIRED = 2,
  }
}

export class OneofDescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): OneofDescriptorProto;
  hasName(): boolean;
  clearName(): OneofDescriptorProto;

  getOptions(): OneofOptions | undefined;
  setOptions(value?: OneofOptions): OneofDescriptorProto;
  hasOptions(): boolean;
  clearOptions(): OneofDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): OneofDescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: OneofDescriptorProto): OneofDescriptorProto.AsObject;
  static serializeBinaryToWriter(message: OneofDescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): OneofDescriptorProto;
  static deserializeBinaryFromReader(message: OneofDescriptorProto, reader: jspb.BinaryReader): OneofDescriptorProto;
}

export namespace OneofDescriptorProto {
  export type AsObject = {
    name?: string,
    options?: OneofOptions.AsObject,
  }
}

export class EnumDescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): EnumDescriptorProto;
  hasName(): boolean;
  clearName(): EnumDescriptorProto;

  getValueList(): Array<EnumValueDescriptorProto>;
  setValueList(value: Array<EnumValueDescriptorProto>): EnumDescriptorProto;
  clearValueList(): EnumDescriptorProto;
  addValue(value?: EnumValueDescriptorProto, index?: number): EnumValueDescriptorProto;

  getOptions(): EnumOptions | undefined;
  setOptions(value?: EnumOptions): EnumDescriptorProto;
  hasOptions(): boolean;
  clearOptions(): EnumDescriptorProto;

  getReservedRangeList(): Array<EnumDescriptorProto.EnumReservedRange>;
  setReservedRangeList(value: Array<EnumDescriptorProto.EnumReservedRange>): EnumDescriptorProto;
  clearReservedRangeList(): EnumDescriptorProto;
  addReservedRange(value?: EnumDescriptorProto.EnumReservedRange, index?: number): EnumDescriptorProto.EnumReservedRange;

  getReservedNameList(): Array<string>;
  setReservedNameList(value: Array<string>): EnumDescriptorProto;
  clearReservedNameList(): EnumDescriptorProto;
  addReservedName(value: string, index?: number): EnumDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): EnumDescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: EnumDescriptorProto): EnumDescriptorProto.AsObject;
  static serializeBinaryToWriter(message: EnumDescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): EnumDescriptorProto;
  static deserializeBinaryFromReader(message: EnumDescriptorProto, reader: jspb.BinaryReader): EnumDescriptorProto;
}

export namespace EnumDescriptorProto {
  export type AsObject = {
    name?: string,
    valueList: Array<EnumValueDescriptorProto.AsObject>,
    options?: EnumOptions.AsObject,
    reservedRangeList: Array<EnumDescriptorProto.EnumReservedRange.AsObject>,
    reservedNameList: Array<string>,
  }

  export class EnumReservedRange extends jspb.Message {
    getStart(): number;
    setStart(value: number): EnumReservedRange;
    hasStart(): boolean;
    clearStart(): EnumReservedRange;

    getEnd(): number;
    setEnd(value: number): EnumReservedRange;
    hasEnd(): boolean;
    clearEnd(): EnumReservedRange;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): EnumReservedRange.AsObject;
    static toObject(includeInstance: boolean, msg: EnumReservedRange): EnumReservedRange.AsObject;
    static serializeBinaryToWriter(message: EnumReservedRange, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): EnumReservedRange;
    static deserializeBinaryFromReader(message: EnumReservedRange, reader: jspb.BinaryReader): EnumReservedRange;
  }

  export namespace EnumReservedRange {
    export type AsObject = {
      start?: number,
      end?: number,
    }
  }

}

export class EnumValueDescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): EnumValueDescriptorProto;
  hasName(): boolean;
  clearName(): EnumValueDescriptorProto;

  getNumber(): number;
  setNumber(value: number): EnumValueDescriptorProto;
  hasNumber(): boolean;
  clearNumber(): EnumValueDescriptorProto;

  getOptions(): EnumValueOptions | undefined;
  setOptions(value?: EnumValueOptions): EnumValueDescriptorProto;
  hasOptions(): boolean;
  clearOptions(): EnumValueDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): EnumValueDescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: EnumValueDescriptorProto): EnumValueDescriptorProto.AsObject;
  static serializeBinaryToWriter(message: EnumValueDescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): EnumValueDescriptorProto;
  static deserializeBinaryFromReader(message: EnumValueDescriptorProto, reader: jspb.BinaryReader): EnumValueDescriptorProto;
}

export namespace EnumValueDescriptorProto {
  export type AsObject = {
    name?: string,
    number?: number,
    options?: EnumValueOptions.AsObject,
  }
}

export class ServiceDescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): ServiceDescriptorProto;
  hasName(): boolean;
  clearName(): ServiceDescriptorProto;

  getMethodList(): Array<MethodDescriptorProto>;
  setMethodList(value: Array<MethodDescriptorProto>): ServiceDescriptorProto;
  clearMethodList(): ServiceDescriptorProto;
  addMethod(value?: MethodDescriptorProto, index?: number): MethodDescriptorProto;

  getOptions(): ServiceOptions | undefined;
  setOptions(value?: ServiceOptions): ServiceDescriptorProto;
  hasOptions(): boolean;
  clearOptions(): ServiceDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ServiceDescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: ServiceDescriptorProto): ServiceDescriptorProto.AsObject;
  static serializeBinaryToWriter(message: ServiceDescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ServiceDescriptorProto;
  static deserializeBinaryFromReader(message: ServiceDescriptorProto, reader: jspb.BinaryReader): ServiceDescriptorProto;
}

export namespace ServiceDescriptorProto {
  export type AsObject = {
    name?: string,
    methodList: Array<MethodDescriptorProto.AsObject>,
    options?: ServiceOptions.AsObject,
  }
}

export class MethodDescriptorProto extends jspb.Message {
  getName(): string;
  setName(value: string): MethodDescriptorProto;
  hasName(): boolean;
  clearName(): MethodDescriptorProto;

  getInputType(): string;
  setInputType(value: string): MethodDescriptorProto;
  hasInputType(): boolean;
  clearInputType(): MethodDescriptorProto;

  getOutputType(): string;
  setOutputType(value: string): MethodDescriptorProto;
  hasOutputType(): boolean;
  clearOutputType(): MethodDescriptorProto;

  getOptions(): MethodOptions | undefined;
  setOptions(value?: MethodOptions): MethodDescriptorProto;
  hasOptions(): boolean;
  clearOptions(): MethodDescriptorProto;

  getClientStreaming(): boolean;
  setClientStreaming(value: boolean): MethodDescriptorProto;
  hasClientStreaming(): boolean;
  clearClientStreaming(): MethodDescriptorProto;

  getServerStreaming(): boolean;
  setServerStreaming(value: boolean): MethodDescriptorProto;
  hasServerStreaming(): boolean;
  clearServerStreaming(): MethodDescriptorProto;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): MethodDescriptorProto.AsObject;
  static toObject(includeInstance: boolean, msg: MethodDescriptorProto): MethodDescriptorProto.AsObject;
  static serializeBinaryToWriter(message: MethodDescriptorProto, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): MethodDescriptorProto;
  static deserializeBinaryFromReader(message: MethodDescriptorProto, reader: jspb.BinaryReader): MethodDescriptorProto;
}

export namespace MethodDescriptorProto {
  export type AsObject = {
    name?: string,
    inputType?: string,
    outputType?: string,
    options?: MethodOptions.AsObject,
    clientStreaming?: boolean,
    serverStreaming?: boolean,
  }
}

export class FileOptions extends jspb.Message {
  getJavaPackage(): string;
  setJavaPackage(value: string): FileOptions;
  hasJavaPackage(): boolean;
  clearJavaPackage(): FileOptions;

  getJavaOuterClassname(): string;
  setJavaOuterClassname(value: string): FileOptions;
  hasJavaOuterClassname(): boolean;
  clearJavaOuterClassname(): FileOptions;

  getJavaMultipleFiles(): boolean;
  setJavaMultipleFiles(value: boolean): FileOptions;
  hasJavaMultipleFiles(): boolean;
  clearJavaMultipleFiles(): FileOptions;

  getJavaGenerateEqualsAndHash(): boolean;
  setJavaGenerateEqualsAndHash(value: boolean): FileOptions;
  hasJavaGenerateEqualsAndHash(): boolean;
  clearJavaGenerateEqualsAndHash(): FileOptions;

  getJavaStringCheckUtf8(): boolean;
  setJavaStringCheckUtf8(value: boolean): FileOptions;
  hasJavaStringCheckUtf8(): boolean;
  clearJavaStringCheckUtf8(): FileOptions;

  getOptimizeFor(): FileOptions.OptimizeMode;
  setOptimizeFor(value: FileOptions.OptimizeMode): FileOptions;
  hasOptimizeFor(): boolean;
  clearOptimizeFor(): FileOptions;

  getGoPackage(): string;
  setGoPackage(value: string): FileOptions;
  hasGoPackage(): boolean;
  clearGoPackage(): FileOptions;

  getCcGenericServices(): boolean;
  setCcGenericServices(value: boolean): FileOptions;
  hasCcGenericServices(): boolean;
  clearCcGenericServices(): FileOptions;

  getJavaGenericServices(): boolean;
  setJavaGenericServices(value: boolean): FileOptions;
  hasJavaGenericServices(): boolean;
  clearJavaGenericServices(): FileOptions;

  getPyGenericServices(): boolean;
  setPyGenericServices(value: boolean): FileOptions;
  hasPyGenericServices(): boolean;
  clearPyGenericServices(): FileOptions;

  getDeprecated(): boolean;
  setDeprecated(value: boolean): FileOptions;
  hasDeprecated(): boolean;
  clearDeprecated(): FileOptions;

  getCcEnableArenas(): boolean;
  setCcEnableArenas(value: boolean): FileOptions;
  hasCcEnableArenas(): boolean;
  clearCcEnableArenas(): FileOptions;

  getObjcClassPrefix(): string;
  setObjcClassPrefix(value: string): FileOptions;
  hasObjcClassPrefix(): boolean;
  clearObjcClassPrefix(): FileOptions;

  getCsharpNamespace(): string;
  setCsharpNamespace(value: string): FileOptions;
  hasCsharpNamespace(): boolean;
  clearCsharpNamespace(): FileOptions;

  getSwiftPrefix(): string;
  setSwiftPrefix(value: string): FileOptions;
  hasSwiftPrefix(): boolean;
  clearSwiftPrefix(): FileOptions;

  getPhpClassPrefix(): string;
  setPhpClassPrefix(value: string): FileOptions;
  hasPhpClassPrefix(): boolean;
  clearPhpClassPrefix(): FileOptions;

  getPhpNamespace(): string;
  setPhpNamespace(value: string): FileOptions;
  hasPhpNamespace(): boolean;
  clearPhpNamespace(): FileOptions;

  getPhpMetadataNamespace(): string;
  setPhpMetadataNamespace(value: string): FileOptions;
  hasPhpMetadataNamespace(): boolean;
  clearPhpMetadataNamespace(): FileOptions;

  getRubyPackage(): string;
  setRubyPackage(value: string): FileOptions;
  hasRubyPackage(): boolean;
  clearRubyPackage(): FileOptions;

  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): FileOptions;
  hasFeatures(): boolean;
  clearFeatures(): FileOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): FileOptions;
  clearUninterpretedOptionList(): FileOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FileOptions.AsObject;
  static toObject(includeInstance: boolean, msg: FileOptions): FileOptions.AsObject;
  static serializeBinaryToWriter(message: FileOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FileOptions;
  static deserializeBinaryFromReader(message: FileOptions, reader: jspb.BinaryReader): FileOptions;
}

export namespace FileOptions {
  export type AsObject = {
    javaPackage?: string,
    javaOuterClassname?: string,
    javaMultipleFiles?: boolean,
    javaGenerateEqualsAndHash?: boolean,
    javaStringCheckUtf8?: boolean,
    optimizeFor?: FileOptions.OptimizeMode,
    goPackage?: string,
    ccGenericServices?: boolean,
    javaGenericServices?: boolean,
    pyGenericServices?: boolean,
    deprecated?: boolean,
    ccEnableArenas?: boolean,
    objcClassPrefix?: string,
    csharpNamespace?: string,
    swiftPrefix?: string,
    phpClassPrefix?: string,
    phpNamespace?: string,
    phpMetadataNamespace?: string,
    rubyPackage?: string,
    features?: FeatureSet.AsObject,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }

  export enum OptimizeMode { 
    SPEED = 1,
    CODE_SIZE = 2,
    LITE_RUNTIME = 3,
  }
}

export class MessageOptions extends jspb.Message {
  getMessageSetWireFormat(): boolean;
  setMessageSetWireFormat(value: boolean): MessageOptions;
  hasMessageSetWireFormat(): boolean;
  clearMessageSetWireFormat(): MessageOptions;

  getNoStandardDescriptorAccessor(): boolean;
  setNoStandardDescriptorAccessor(value: boolean): MessageOptions;
  hasNoStandardDescriptorAccessor(): boolean;
  clearNoStandardDescriptorAccessor(): MessageOptions;

  getDeprecated(): boolean;
  setDeprecated(value: boolean): MessageOptions;
  hasDeprecated(): boolean;
  clearDeprecated(): MessageOptions;

  getMapEntry(): boolean;
  setMapEntry(value: boolean): MessageOptions;
  hasMapEntry(): boolean;
  clearMapEntry(): MessageOptions;

  getDeprecatedLegacyJsonFieldConflicts(): boolean;
  setDeprecatedLegacyJsonFieldConflicts(value: boolean): MessageOptions;
  hasDeprecatedLegacyJsonFieldConflicts(): boolean;
  clearDeprecatedLegacyJsonFieldConflicts(): MessageOptions;

  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): MessageOptions;
  hasFeatures(): boolean;
  clearFeatures(): MessageOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): MessageOptions;
  clearUninterpretedOptionList(): MessageOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): MessageOptions.AsObject;
  static toObject(includeInstance: boolean, msg: MessageOptions): MessageOptions.AsObject;
  static serializeBinaryToWriter(message: MessageOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): MessageOptions;
  static deserializeBinaryFromReader(message: MessageOptions, reader: jspb.BinaryReader): MessageOptions;
}

export namespace MessageOptions {
  export type AsObject = {
    messageSetWireFormat?: boolean,
    noStandardDescriptorAccessor?: boolean,
    deprecated?: boolean,
    mapEntry?: boolean,
    deprecatedLegacyJsonFieldConflicts?: boolean,
    features?: FeatureSet.AsObject,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }
}

export class FieldOptions extends jspb.Message {
  getCtype(): FieldOptions.CType;
  setCtype(value: FieldOptions.CType): FieldOptions;
  hasCtype(): boolean;
  clearCtype(): FieldOptions;

  getPacked(): boolean;
  setPacked(value: boolean): FieldOptions;
  hasPacked(): boolean;
  clearPacked(): FieldOptions;

  getJstype(): FieldOptions.JSType;
  setJstype(value: FieldOptions.JSType): FieldOptions;
  hasJstype(): boolean;
  clearJstype(): FieldOptions;

  getLazy(): boolean;
  setLazy(value: boolean): FieldOptions;
  hasLazy(): boolean;
  clearLazy(): FieldOptions;

  getUnverifiedLazy(): boolean;
  setUnverifiedLazy(value: boolean): FieldOptions;
  hasUnverifiedLazy(): boolean;
  clearUnverifiedLazy(): FieldOptions;

  getDeprecated(): boolean;
  setDeprecated(value: boolean): FieldOptions;
  hasDeprecated(): boolean;
  clearDeprecated(): FieldOptions;

  getWeak(): boolean;
  setWeak(value: boolean): FieldOptions;
  hasWeak(): boolean;
  clearWeak(): FieldOptions;

  getDebugRedact(): boolean;
  setDebugRedact(value: boolean): FieldOptions;
  hasDebugRedact(): boolean;
  clearDebugRedact(): FieldOptions;

  getRetention(): FieldOptions.OptionRetention;
  setRetention(value: FieldOptions.OptionRetention): FieldOptions;
  hasRetention(): boolean;
  clearRetention(): FieldOptions;

  getTargetsList(): Array<FieldOptions.OptionTargetType>;
  setTargetsList(value: Array<FieldOptions.OptionTargetType>): FieldOptions;
  clearTargetsList(): FieldOptions;
  addTargets(value: FieldOptions.OptionTargetType, index?: number): FieldOptions;

  getEditionDefaultsList(): Array<FieldOptions.EditionDefault>;
  setEditionDefaultsList(value: Array<FieldOptions.EditionDefault>): FieldOptions;
  clearEditionDefaultsList(): FieldOptions;
  addEditionDefaults(value?: FieldOptions.EditionDefault, index?: number): FieldOptions.EditionDefault;

  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): FieldOptions;
  hasFeatures(): boolean;
  clearFeatures(): FieldOptions;

  getFeatureSupport(): FieldOptions.FeatureSupport | undefined;
  setFeatureSupport(value?: FieldOptions.FeatureSupport): FieldOptions;
  hasFeatureSupport(): boolean;
  clearFeatureSupport(): FieldOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): FieldOptions;
  clearUninterpretedOptionList(): FieldOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FieldOptions.AsObject;
  static toObject(includeInstance: boolean, msg: FieldOptions): FieldOptions.AsObject;
  static serializeBinaryToWriter(message: FieldOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FieldOptions;
  static deserializeBinaryFromReader(message: FieldOptions, reader: jspb.BinaryReader): FieldOptions;
}

export namespace FieldOptions {
  export type AsObject = {
    ctype?: FieldOptions.CType,
    packed?: boolean,
    jstype?: FieldOptions.JSType,
    lazy?: boolean,
    unverifiedLazy?: boolean,
    deprecated?: boolean,
    weak?: boolean,
    debugRedact?: boolean,
    retention?: FieldOptions.OptionRetention,
    targetsList: Array<FieldOptions.OptionTargetType>,
    editionDefaultsList: Array<FieldOptions.EditionDefault.AsObject>,
    features?: FeatureSet.AsObject,
    featureSupport?: FieldOptions.FeatureSupport.AsObject,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }

  export class EditionDefault extends jspb.Message {
    getEdition(): Edition;
    setEdition(value: Edition): EditionDefault;
    hasEdition(): boolean;
    clearEdition(): EditionDefault;

    getValue(): string;
    setValue(value: string): EditionDefault;
    hasValue(): boolean;
    clearValue(): EditionDefault;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): EditionDefault.AsObject;
    static toObject(includeInstance: boolean, msg: EditionDefault): EditionDefault.AsObject;
    static serializeBinaryToWriter(message: EditionDefault, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): EditionDefault;
    static deserializeBinaryFromReader(message: EditionDefault, reader: jspb.BinaryReader): EditionDefault;
  }

  export namespace EditionDefault {
    export type AsObject = {
      edition?: Edition,
      value?: string,
    }
  }


  export class FeatureSupport extends jspb.Message {
    getEditionIntroduced(): Edition;
    setEditionIntroduced(value: Edition): FeatureSupport;
    hasEditionIntroduced(): boolean;
    clearEditionIntroduced(): FeatureSupport;

    getEditionDeprecated(): Edition;
    setEditionDeprecated(value: Edition): FeatureSupport;
    hasEditionDeprecated(): boolean;
    clearEditionDeprecated(): FeatureSupport;

    getDeprecationWarning(): string;
    setDeprecationWarning(value: string): FeatureSupport;
    hasDeprecationWarning(): boolean;
    clearDeprecationWarning(): FeatureSupport;

    getEditionRemoved(): Edition;
    setEditionRemoved(value: Edition): FeatureSupport;
    hasEditionRemoved(): boolean;
    clearEditionRemoved(): FeatureSupport;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): FeatureSupport.AsObject;
    static toObject(includeInstance: boolean, msg: FeatureSupport): FeatureSupport.AsObject;
    static serializeBinaryToWriter(message: FeatureSupport, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): FeatureSupport;
    static deserializeBinaryFromReader(message: FeatureSupport, reader: jspb.BinaryReader): FeatureSupport;
  }

  export namespace FeatureSupport {
    export type AsObject = {
      editionIntroduced?: Edition,
      editionDeprecated?: Edition,
      deprecationWarning?: string,
      editionRemoved?: Edition,
    }
  }


  export enum CType { 
    STRING = 0,
    CORD = 1,
    STRING_PIECE = 2,
  }

  export enum JSType { 
    JS_NORMAL = 0,
    JS_STRING = 1,
    JS_NUMBER = 2,
  }

  export enum OptionRetention { 
    RETENTION_UNKNOWN = 0,
    RETENTION_RUNTIME = 1,
    RETENTION_SOURCE = 2,
  }

  export enum OptionTargetType { 
    TARGET_TYPE_UNKNOWN = 0,
    TARGET_TYPE_FILE = 1,
    TARGET_TYPE_EXTENSION_RANGE = 2,
    TARGET_TYPE_MESSAGE = 3,
    TARGET_TYPE_FIELD = 4,
    TARGET_TYPE_ONEOF = 5,
    TARGET_TYPE_ENUM = 6,
    TARGET_TYPE_ENUM_ENTRY = 7,
    TARGET_TYPE_SERVICE = 8,
    TARGET_TYPE_METHOD = 9,
  }
}

export class OneofOptions extends jspb.Message {
  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): OneofOptions;
  hasFeatures(): boolean;
  clearFeatures(): OneofOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): OneofOptions;
  clearUninterpretedOptionList(): OneofOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): OneofOptions.AsObject;
  static toObject(includeInstance: boolean, msg: OneofOptions): OneofOptions.AsObject;
  static serializeBinaryToWriter(message: OneofOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): OneofOptions;
  static deserializeBinaryFromReader(message: OneofOptions, reader: jspb.BinaryReader): OneofOptions;
}

export namespace OneofOptions {
  export type AsObject = {
    features?: FeatureSet.AsObject,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }
}

export class EnumOptions extends jspb.Message {
  getAllowAlias(): boolean;
  setAllowAlias(value: boolean): EnumOptions;
  hasAllowAlias(): boolean;
  clearAllowAlias(): EnumOptions;

  getDeprecated(): boolean;
  setDeprecated(value: boolean): EnumOptions;
  hasDeprecated(): boolean;
  clearDeprecated(): EnumOptions;

  getDeprecatedLegacyJsonFieldConflicts(): boolean;
  setDeprecatedLegacyJsonFieldConflicts(value: boolean): EnumOptions;
  hasDeprecatedLegacyJsonFieldConflicts(): boolean;
  clearDeprecatedLegacyJsonFieldConflicts(): EnumOptions;

  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): EnumOptions;
  hasFeatures(): boolean;
  clearFeatures(): EnumOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): EnumOptions;
  clearUninterpretedOptionList(): EnumOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): EnumOptions.AsObject;
  static toObject(includeInstance: boolean, msg: EnumOptions): EnumOptions.AsObject;
  static serializeBinaryToWriter(message: EnumOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): EnumOptions;
  static deserializeBinaryFromReader(message: EnumOptions, reader: jspb.BinaryReader): EnumOptions;
}

export namespace EnumOptions {
  export type AsObject = {
    allowAlias?: boolean,
    deprecated?: boolean,
    deprecatedLegacyJsonFieldConflicts?: boolean,
    features?: FeatureSet.AsObject,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }
}

export class EnumValueOptions extends jspb.Message {
  getDeprecated(): boolean;
  setDeprecated(value: boolean): EnumValueOptions;
  hasDeprecated(): boolean;
  clearDeprecated(): EnumValueOptions;

  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): EnumValueOptions;
  hasFeatures(): boolean;
  clearFeatures(): EnumValueOptions;

  getDebugRedact(): boolean;
  setDebugRedact(value: boolean): EnumValueOptions;
  hasDebugRedact(): boolean;
  clearDebugRedact(): EnumValueOptions;

  getFeatureSupport(): FieldOptions.FeatureSupport | undefined;
  setFeatureSupport(value?: FieldOptions.FeatureSupport): EnumValueOptions;
  hasFeatureSupport(): boolean;
  clearFeatureSupport(): EnumValueOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): EnumValueOptions;
  clearUninterpretedOptionList(): EnumValueOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): EnumValueOptions.AsObject;
  static toObject(includeInstance: boolean, msg: EnumValueOptions): EnumValueOptions.AsObject;
  static serializeBinaryToWriter(message: EnumValueOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): EnumValueOptions;
  static deserializeBinaryFromReader(message: EnumValueOptions, reader: jspb.BinaryReader): EnumValueOptions;
}

export namespace EnumValueOptions {
  export type AsObject = {
    deprecated?: boolean,
    features?: FeatureSet.AsObject,
    debugRedact?: boolean,
    featureSupport?: FieldOptions.FeatureSupport.AsObject,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }
}

export class ServiceOptions extends jspb.Message {
  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): ServiceOptions;
  hasFeatures(): boolean;
  clearFeatures(): ServiceOptions;

  getDeprecated(): boolean;
  setDeprecated(value: boolean): ServiceOptions;
  hasDeprecated(): boolean;
  clearDeprecated(): ServiceOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): ServiceOptions;
  clearUninterpretedOptionList(): ServiceOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ServiceOptions.AsObject;
  static toObject(includeInstance: boolean, msg: ServiceOptions): ServiceOptions.AsObject;
  static serializeBinaryToWriter(message: ServiceOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ServiceOptions;
  static deserializeBinaryFromReader(message: ServiceOptions, reader: jspb.BinaryReader): ServiceOptions;
}

export namespace ServiceOptions {
  export type AsObject = {
    features?: FeatureSet.AsObject,
    deprecated?: boolean,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }
}

export class MethodOptions extends jspb.Message {
  getDeprecated(): boolean;
  setDeprecated(value: boolean): MethodOptions;
  hasDeprecated(): boolean;
  clearDeprecated(): MethodOptions;

  getIdempotencyLevel(): MethodOptions.IdempotencyLevel;
  setIdempotencyLevel(value: MethodOptions.IdempotencyLevel): MethodOptions;
  hasIdempotencyLevel(): boolean;
  clearIdempotencyLevel(): MethodOptions;

  getFeatures(): FeatureSet | undefined;
  setFeatures(value?: FeatureSet): MethodOptions;
  hasFeatures(): boolean;
  clearFeatures(): MethodOptions;

  getUninterpretedOptionList(): Array<UninterpretedOption>;
  setUninterpretedOptionList(value: Array<UninterpretedOption>): MethodOptions;
  clearUninterpretedOptionList(): MethodOptions;
  addUninterpretedOption(value?: UninterpretedOption, index?: number): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): MethodOptions.AsObject;
  static toObject(includeInstance: boolean, msg: MethodOptions): MethodOptions.AsObject;
  static serializeBinaryToWriter(message: MethodOptions, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): MethodOptions;
  static deserializeBinaryFromReader(message: MethodOptions, reader: jspb.BinaryReader): MethodOptions;
}

export namespace MethodOptions {
  export type AsObject = {
    deprecated?: boolean,
    idempotencyLevel?: MethodOptions.IdempotencyLevel,
    features?: FeatureSet.AsObject,
    uninterpretedOptionList: Array<UninterpretedOption.AsObject>,
  }

  export enum IdempotencyLevel { 
    IDEMPOTENCY_UNKNOWN = 0,
    NO_SIDE_EFFECTS = 1,
    IDEMPOTENT = 2,
  }
}

export class UninterpretedOption extends jspb.Message {
  getNameList(): Array<UninterpretedOption.NamePart>;
  setNameList(value: Array<UninterpretedOption.NamePart>): UninterpretedOption;
  clearNameList(): UninterpretedOption;
  addName(value?: UninterpretedOption.NamePart, index?: number): UninterpretedOption.NamePart;

  getIdentifierValue(): string;
  setIdentifierValue(value: string): UninterpretedOption;
  hasIdentifierValue(): boolean;
  clearIdentifierValue(): UninterpretedOption;

  getPositiveIntValue(): number;
  setPositiveIntValue(value: number): UninterpretedOption;
  hasPositiveIntValue(): boolean;
  clearPositiveIntValue(): UninterpretedOption;

  getNegativeIntValue(): number;
  setNegativeIntValue(value: number): UninterpretedOption;
  hasNegativeIntValue(): boolean;
  clearNegativeIntValue(): UninterpretedOption;

  getDoubleValue(): number;
  setDoubleValue(value: number): UninterpretedOption;
  hasDoubleValue(): boolean;
  clearDoubleValue(): UninterpretedOption;

  getStringValue(): Uint8Array | string;
  getStringValue_asU8(): Uint8Array;
  getStringValue_asB64(): string;
  setStringValue(value: Uint8Array | string): UninterpretedOption;
  hasStringValue(): boolean;
  clearStringValue(): UninterpretedOption;

  getAggregateValue(): string;
  setAggregateValue(value: string): UninterpretedOption;
  hasAggregateValue(): boolean;
  clearAggregateValue(): UninterpretedOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UninterpretedOption.AsObject;
  static toObject(includeInstance: boolean, msg: UninterpretedOption): UninterpretedOption.AsObject;
  static serializeBinaryToWriter(message: UninterpretedOption, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UninterpretedOption;
  static deserializeBinaryFromReader(message: UninterpretedOption, reader: jspb.BinaryReader): UninterpretedOption;
}

export namespace UninterpretedOption {
  export type AsObject = {
    nameList: Array<UninterpretedOption.NamePart.AsObject>,
    identifierValue?: string,
    positiveIntValue?: number,
    negativeIntValue?: number,
    doubleValue?: number,
    stringValue?: Uint8Array | string,
    aggregateValue?: string,
  }

  export class NamePart extends jspb.Message {
    getNamePart(): string;
    setNamePart(value: string): NamePart;

    getIsExtension(): boolean;
    setIsExtension(value: boolean): NamePart;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): NamePart.AsObject;
    static toObject(includeInstance: boolean, msg: NamePart): NamePart.AsObject;
    static serializeBinaryToWriter(message: NamePart, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): NamePart;
    static deserializeBinaryFromReader(message: NamePart, reader: jspb.BinaryReader): NamePart;
  }

  export namespace NamePart {
    export type AsObject = {
      namePart: string,
      isExtension: boolean,
    }
  }

}

export class FeatureSet extends jspb.Message {
  getFieldPresence(): FeatureSet.FieldPresence;
  setFieldPresence(value: FeatureSet.FieldPresence): FeatureSet;
  hasFieldPresence(): boolean;
  clearFieldPresence(): FeatureSet;

  getEnumType(): FeatureSet.EnumType;
  setEnumType(value: FeatureSet.EnumType): FeatureSet;
  hasEnumType(): boolean;
  clearEnumType(): FeatureSet;

  getRepeatedFieldEncoding(): FeatureSet.RepeatedFieldEncoding;
  setRepeatedFieldEncoding(value: FeatureSet.RepeatedFieldEncoding): FeatureSet;
  hasRepeatedFieldEncoding(): boolean;
  clearRepeatedFieldEncoding(): FeatureSet;

  getUtf8Validation(): FeatureSet.Utf8Validation;
  setUtf8Validation(value: FeatureSet.Utf8Validation): FeatureSet;
  hasUtf8Validation(): boolean;
  clearUtf8Validation(): FeatureSet;

  getMessageEncoding(): FeatureSet.MessageEncoding;
  setMessageEncoding(value: FeatureSet.MessageEncoding): FeatureSet;
  hasMessageEncoding(): boolean;
  clearMessageEncoding(): FeatureSet;

  getJsonFormat(): FeatureSet.JsonFormat;
  setJsonFormat(value: FeatureSet.JsonFormat): FeatureSet;
  hasJsonFormat(): boolean;
  clearJsonFormat(): FeatureSet;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FeatureSet.AsObject;
  static toObject(includeInstance: boolean, msg: FeatureSet): FeatureSet.AsObject;
  static serializeBinaryToWriter(message: FeatureSet, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FeatureSet;
  static deserializeBinaryFromReader(message: FeatureSet, reader: jspb.BinaryReader): FeatureSet;
}

export namespace FeatureSet {
  export type AsObject = {
    fieldPresence?: FeatureSet.FieldPresence,
    enumType?: FeatureSet.EnumType,
    repeatedFieldEncoding?: FeatureSet.RepeatedFieldEncoding,
    utf8Validation?: FeatureSet.Utf8Validation,
    messageEncoding?: FeatureSet.MessageEncoding,
    jsonFormat?: FeatureSet.JsonFormat,
  }

  export enum FieldPresence { 
    FIELD_PRESENCE_UNKNOWN = 0,
    EXPLICIT = 1,
    IMPLICIT = 2,
    LEGACY_REQUIRED = 3,
  }

  export enum EnumType { 
    ENUM_TYPE_UNKNOWN = 0,
    OPEN = 1,
    CLOSED = 2,
  }

  export enum RepeatedFieldEncoding { 
    REPEATED_FIELD_ENCODING_UNKNOWN = 0,
    PACKED = 1,
    EXPANDED = 2,
  }

  export enum Utf8Validation { 
    UTF8_VALIDATION_UNKNOWN = 0,
    VERIFY = 2,
    NONE = 3,
  }

  export enum MessageEncoding { 
    MESSAGE_ENCODING_UNKNOWN = 0,
    LENGTH_PREFIXED = 1,
    DELIMITED = 2,
  }

  export enum JsonFormat { 
    JSON_FORMAT_UNKNOWN = 0,
    ALLOW = 1,
    LEGACY_BEST_EFFORT = 2,
  }
}

export class FeatureSetDefaults extends jspb.Message {
  getDefaultsList(): Array<FeatureSetDefaults.FeatureSetEditionDefault>;
  setDefaultsList(value: Array<FeatureSetDefaults.FeatureSetEditionDefault>): FeatureSetDefaults;
  clearDefaultsList(): FeatureSetDefaults;
  addDefaults(value?: FeatureSetDefaults.FeatureSetEditionDefault, index?: number): FeatureSetDefaults.FeatureSetEditionDefault;

  getMinimumEdition(): Edition;
  setMinimumEdition(value: Edition): FeatureSetDefaults;
  hasMinimumEdition(): boolean;
  clearMinimumEdition(): FeatureSetDefaults;

  getMaximumEdition(): Edition;
  setMaximumEdition(value: Edition): FeatureSetDefaults;
  hasMaximumEdition(): boolean;
  clearMaximumEdition(): FeatureSetDefaults;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FeatureSetDefaults.AsObject;
  static toObject(includeInstance: boolean, msg: FeatureSetDefaults): FeatureSetDefaults.AsObject;
  static serializeBinaryToWriter(message: FeatureSetDefaults, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FeatureSetDefaults;
  static deserializeBinaryFromReader(message: FeatureSetDefaults, reader: jspb.BinaryReader): FeatureSetDefaults;
}

export namespace FeatureSetDefaults {
  export type AsObject = {
    defaultsList: Array<FeatureSetDefaults.FeatureSetEditionDefault.AsObject>,
    minimumEdition?: Edition,
    maximumEdition?: Edition,
  }

  export class FeatureSetEditionDefault extends jspb.Message {
    getEdition(): Edition;
    setEdition(value: Edition): FeatureSetEditionDefault;
    hasEdition(): boolean;
    clearEdition(): FeatureSetEditionDefault;

    getOverridableFeatures(): FeatureSet | undefined;
    setOverridableFeatures(value?: FeatureSet): FeatureSetEditionDefault;
    hasOverridableFeatures(): boolean;
    clearOverridableFeatures(): FeatureSetEditionDefault;

    getFixedFeatures(): FeatureSet | undefined;
    setFixedFeatures(value?: FeatureSet): FeatureSetEditionDefault;
    hasFixedFeatures(): boolean;
    clearFixedFeatures(): FeatureSetEditionDefault;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): FeatureSetEditionDefault.AsObject;
    static toObject(includeInstance: boolean, msg: FeatureSetEditionDefault): FeatureSetEditionDefault.AsObject;
    static serializeBinaryToWriter(message: FeatureSetEditionDefault, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): FeatureSetEditionDefault;
    static deserializeBinaryFromReader(message: FeatureSetEditionDefault, reader: jspb.BinaryReader): FeatureSetEditionDefault;
  }

  export namespace FeatureSetEditionDefault {
    export type AsObject = {
      edition?: Edition,
      overridableFeatures?: FeatureSet.AsObject,
      fixedFeatures?: FeatureSet.AsObject,
    }
  }

}

export class SourceCodeInfo extends jspb.Message {
  getLocationList(): Array<SourceCodeInfo.Location>;
  setLocationList(value: Array<SourceCodeInfo.Location>): SourceCodeInfo;
  clearLocationList(): SourceCodeInfo;
  addLocation(value?: SourceCodeInfo.Location, index?: number): SourceCodeInfo.Location;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SourceCodeInfo.AsObject;
  static toObject(includeInstance: boolean, msg: SourceCodeInfo): SourceCodeInfo.AsObject;
  static serializeBinaryToWriter(message: SourceCodeInfo, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SourceCodeInfo;
  static deserializeBinaryFromReader(message: SourceCodeInfo, reader: jspb.BinaryReader): SourceCodeInfo;
}

export namespace SourceCodeInfo {
  export type AsObject = {
    locationList: Array<SourceCodeInfo.Location.AsObject>,
  }

  export class Location extends jspb.Message {
    getPathList(): Array<number>;
    setPathList(value: Array<number>): Location;
    clearPathList(): Location;
    addPath(value: number, index?: number): Location;

    getSpanList(): Array<number>;
    setSpanList(value: Array<number>): Location;
    clearSpanList(): Location;
    addSpan(value: number, index?: number): Location;

    getLeadingComments(): string;
    setLeadingComments(value: string): Location;
    hasLeadingComments(): boolean;
    clearLeadingComments(): Location;

    getTrailingComments(): string;
    setTrailingComments(value: string): Location;
    hasTrailingComments(): boolean;
    clearTrailingComments(): Location;

    getLeadingDetachedCommentsList(): Array<string>;
    setLeadingDetachedCommentsList(value: Array<string>): Location;
    clearLeadingDetachedCommentsList(): Location;
    addLeadingDetachedComments(value: string, index?: number): Location;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Location.AsObject;
    static toObject(includeInstance: boolean, msg: Location): Location.AsObject;
    static serializeBinaryToWriter(message: Location, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Location;
    static deserializeBinaryFromReader(message: Location, reader: jspb.BinaryReader): Location;
  }

  export namespace Location {
    export type AsObject = {
      pathList: Array<number>,
      spanList: Array<number>,
      leadingComments?: string,
      trailingComments?: string,
      leadingDetachedCommentsList: Array<string>,
    }
  }

}

export class GeneratedCodeInfo extends jspb.Message {
  getAnnotationList(): Array<GeneratedCodeInfo.Annotation>;
  setAnnotationList(value: Array<GeneratedCodeInfo.Annotation>): GeneratedCodeInfo;
  clearAnnotationList(): GeneratedCodeInfo;
  addAnnotation(value?: GeneratedCodeInfo.Annotation, index?: number): GeneratedCodeInfo.Annotation;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GeneratedCodeInfo.AsObject;
  static toObject(includeInstance: boolean, msg: GeneratedCodeInfo): GeneratedCodeInfo.AsObject;
  static serializeBinaryToWriter(message: GeneratedCodeInfo, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GeneratedCodeInfo;
  static deserializeBinaryFromReader(message: GeneratedCodeInfo, reader: jspb.BinaryReader): GeneratedCodeInfo;
}

export namespace GeneratedCodeInfo {
  export type AsObject = {
    annotationList: Array<GeneratedCodeInfo.Annotation.AsObject>,
  }

  export class Annotation extends jspb.Message {
    getPathList(): Array<number>;
    setPathList(value: Array<number>): Annotation;
    clearPathList(): Annotation;
    addPath(value: number, index?: number): Annotation;

    getSourceFile(): string;
    setSourceFile(value: string): Annotation;
    hasSourceFile(): boolean;
    clearSourceFile(): Annotation;

    getBegin(): number;
    setBegin(value: number): Annotation;
    hasBegin(): boolean;
    clearBegin(): Annotation;

    getEnd(): number;
    setEnd(value: number): Annotation;
    hasEnd(): boolean;
    clearEnd(): Annotation;

    getSemantic(): GeneratedCodeInfo.Annotation.Semantic;
    setSemantic(value: GeneratedCodeInfo.Annotation.Semantic): Annotation;
    hasSemantic(): boolean;
    clearSemantic(): Annotation;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Annotation.AsObject;
    static toObject(includeInstance: boolean, msg: Annotation): Annotation.AsObject;
    static serializeBinaryToWriter(message: Annotation, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Annotation;
    static deserializeBinaryFromReader(message: Annotation, reader: jspb.BinaryReader): Annotation;
  }

  export namespace Annotation {
    export type AsObject = {
      pathList: Array<number>,
      sourceFile?: string,
      begin?: number,
      end?: number,
      semantic?: GeneratedCodeInfo.Annotation.Semantic,
    }

    export enum Semantic { 
      NONE = 0,
      SET = 1,
      ALIAS = 2,
    }
  }

}

export enum Edition { 
  EDITION_UNKNOWN = 0,
  EDITION_LEGACY = 900,
  EDITION_PROTO2 = 998,
  EDITION_PROTO3 = 999,
  EDITION_2023 = 1000,
  EDITION_2024 = 1001,
  EDITION_1_TEST_ONLY = 1,
  EDITION_2_TEST_ONLY = 2,
  EDITION_99997_TEST_ONLY = 99997,
  EDITION_99998_TEST_ONLY = 99998,
  EDITION_99999_TEST_ONLY = 99999,
  EDITION_MAX = 2147483647,
}
