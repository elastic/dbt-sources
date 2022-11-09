
with source as (

    select * from {{ source('raw_github', 'issue_label_history') }}

),

renamed as (

    select
        issue_id,
        label,
        updated_at,
        _fivetran_synced,
        actor_id,
        labeled

    from source

)

select * from renamed
