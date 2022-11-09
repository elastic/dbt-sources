
with source as (

    select * from {{ source('raw_netsuite', 'avareconcilebatch') }}

),

renamed as (

    select
        avareconcilebatch_extid,
        avareconcilebatch_id,
        avareconcilebatch_name,
        avatax__custom_record,
        avatax__netsuite,
        avatax_created_doc_ids_1,
        avatax_created_doc_ids_2,
        avatax_created_doc_ids_3,
        avatax_created_doc_ids_4,
        avatax_netsuite__custom_recor,
        batch_date,
        batch_end_date,
        batch_name,
        batch_phase,
        batch_progress,
        batch_start_date,
        batch_status,
        cr_internal_ids,
        date_created,
        is_inactive,
        last_modified_date,
        lastdoccode,
        multicurrency_batch,
        netsuite__custom_record,
        netsuite_created_doc_ids_1,
        netsuite_created_doc_ids_2,
        netsuite_created_doc_ids_3,
        netsuite_created_doc_ids_4,
        only_avatax,
        only_custom_record,
        only_netsuite,
        parent_id,
        reconciled,
        subsidiary_id,
        total_records

    from source

)

select * from renamed
