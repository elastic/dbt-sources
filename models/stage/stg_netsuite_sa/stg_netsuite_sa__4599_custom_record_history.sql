
with source as (

    select * from {{ source('raw_netsuite_sa', '4599_custom_record_history') }}

),

renamed as (

    select
        n_4599_custom_record_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_context_id,
        batch_no_,
        book_id,
        data_error,
        date_created,
        date_deleted,
        deleted,
        filename,
        include_child_subsidiaries,
        is_inactive,
        last_modified_date,
        n_4599_custom_record_extid,
        params,
        parent_id,
        percent_complete,
        period_from,
        period_to,
        report,
        subsidiary_id,
        use_new_engine,
        user_id,
        partition_date

    from source

)

select * from renamed
